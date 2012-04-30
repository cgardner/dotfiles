export EDITOR="vim"
export PATH="$PATH:~/bin"
export WORKING_DIR="$HOME/src"

tm() {
	which tmux 2> /dev/null
	if [ $? != 0 ]; then
		return
	fi

	SESSION="${1}"
	tmux has-session -t $SESSION 
	# If there isn't an existing tmux session with that name, create one
	if [ $? != 0 ]; then
		tmux -2 new-session -d -s $SESSION

		PROJECT_DIR="$WORKING_DIR/$SESSION/repo"
		if [ -d "$PROJECT_DIR" ]; then
			tmux set-option default-path $PROJECT_DIR
		fi

		tmux set-window-option -t $SESSION -g automatic-rename off
		tmux new-window -t $SESSION:0 -k -n vim 'vim'

		tmux split-window -h -p 25 -t $SESSION:0
		tmux split-window -d -t $SESSION:0 'tail -f /var/log/apache2/error.log'

		tmux select-pane -t 0
	fi

	tmux attach -t $SESSION
}

# Count Files in a given Directory
cf() {
  DIRECTORY="${1}"
  if [ -z "$DIRECTORY"]; then
    DIRECTORY="."
  fi
  ls -l $DIRECTORY | grep -v ^l | wc -l
}

# DELete OLD files in a specified directory
delold() {
  DELPATH="${1}"
  DAYS="${2}"
  if [ -z "$DAYS" ]; then
    DAYS="30"
  fi
  
  if [ -z "$DELPATH" ]; then
    DELPATH="/tmp"
  fi
  find $DELPATH* -mtime +$DAYS -exec rm {} \;
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="${TITLEBAR}\
$WHITE\h:\W \u$GREEN \$(parse_git_branch)\
$WHITE\$ "
PS2='> '
PS4='+ '
}
#proml

# color the listings
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad

#### PS1 customization ####
NONE="\[\033[0m\]"    # unsets color to term fg color

# regular colors
K="\[\033[0;30m\]"    # black
R="\[\033[0;31m\]"    # red
G="\[\033[0;32m\]"    # green
Y="\[\033[0;33m\]"    # yellow
B="\[\033[0;34m\]"    # blue
M="\[\033[0;35m\]"    # magenta
C="\[\033[0;36m\]"    # cyan
W="\[\033[0;37m\]"    # white

# emphasized (bolded) colors
EMK="\[\033[1;30m\]"
EMR="\[\033[1;31m\]"
EMG="\[\033[1;32m\]"
EMY="\[\033[1;33m\]"
EMB="\[\033[1;34m\]"
EMM="\[\033[1;35m\]"
EMC="\[\033[1;36m\]"
EMW="\[\033[1;37m\]"

# background colors
BGK="\[\033[40m\]"
BGR="\[\033[41m\]"
BGG="\[\033[42m\]"
BGY="\[\033[43m\]"
BGB="\[\033[44m\]"
BGM="\[\033[45m\]"
BGC="\[\033[46m\]"
BGW="\[\033[47m\]"


# displays only the last 25 characters of pwd
set_new_pwd() {
    # How many characters of the $PWD should be kept
    local pwdmaxlen=25
    # Indicate that there has been dir truncation
    local trunc_symbol=".."
    local dir=${PWD##*/}
    pwdmaxlen=$(( ( pwdmaxlen < ${#dir} ) ? ${#dir} : pwdmaxlen ))
    NEW_PWD=${PWD/#$HOME/\~}
    local pwdoffset=$(( ${#NEW_PWD} - pwdmaxlen ))
    if [ ${pwdoffset} -gt "0" ]
    then
        NEW_PWD=${NEW_PWD:$pwdoffset:$pwdmaxlen}
        NEW_PWD=${trunc_symbol}/${NEW_PWD#*/}
    fi
}

# the name of the git branch in the current directory
set_git_branch() {
    unset GIT_BRANCH
    local branch=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1 /'`;
    
    if test $branch
        then
            GIT_BRANCH="${EMG}git:${NONE}$branch"
    fi
}

# revision of the svn repo in the current directory
set_svn_rev() {
    unset SVN_REV
    local rev=`svn info 2> /dev/null | grep "Revision" | sed 's/Revision: \(.*\)/r\1 /'`;
    
    if test $rev
        then
            SVN_REV="${EMG}svn:${NONE}$rev"
    fi
}

# the name of the activated virtual env
set_virtual_env_base() {
    unset VIRTUAL_ENV_BASE
    local venv=`basename "$VIRTUAL_ENV"`
    
    if test $venv
        then
            VIRTUAL_ENV_BASE="${EMG}env:${NONE}$venv "
    fi
}

update_prompt() {
    set_new_pwd
    set_git_branch
    set_svn_rev
    set_virtual_env_base
    
    PS1="${M}[${HOSTNAME} ${NEW_PWD}${M}] ${GIT_BRANCH}${SVN_REV}${VIRTUAL_ENV_BASE}${C}\$ ${NONE}"
}

PROMPT_COMMAND=update_prompt
