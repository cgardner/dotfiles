export EDITOR="vim"
export PATH="$PATH:~/bin"
export WORKING_DIR="$HOME/src"

alias gi='git'

mutt() {
	SESSION="mutt"
	tmux has-session -t $SESSION
	if [ $? != 0 ]; then
		tmux -2 new-session -d -s $SESSION

		tmux set-option default-path ~/Downloads
		tmux new-window -t $SESSION:0 -k -n mutt 'mutt'
		tmux select-pane -t 0
	fi
	tmux attach -t $SESSION
}

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

		tmux split-window -h -p 30 -t $SESSION:0
		tmux split-window -d -t $SESSION:0 'tail -f /var/log/apache2/error_log'

		if [ -f "$PROJECT_DIR/Vagrantfile" ]; then
			tmux new-window -t $SESSION:1 -k -n vagrant 'cd $PROJECT_DIR && vagrant up'
		fi

		tmux select-pane -t 0
	fi

	tmux attach -t $SESSION
}

pianobar() {
	PIANOBAR=`which pianobar`
	SESSION="pianobar"
	tmux has-session -t $SESSION
	if [ $? != 0 ]; then
		tmux -2 new-session -d -s $SESSION
		tmux new-window -t $SESSION:0 -k -n pianobar $PIANOBAR
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

function _projects () {
	local cur
	COMPREPLY=()
	cur=${COMP_WORDS[COMP_CWORD]}
	COMPREPLY=($( compgen -W "$(ls $WORKING_DIR)" -- $cur))
}
complete -F _projects tm

function _update_ps1()
{
	local CURDIR=$(dirname $BASH_SOURCE)
	export PS1="$($CURDIR/powerline-shell/powerline-shell.py $?)"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" |tr -d %) "$PWD")'
	
}
export PROMPT_COMMAND="_update_ps1"
