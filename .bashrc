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

		tmux split-window -h -p 30 -t $SESSION:0
		tmux split-window -d -t $SESSION:0 'tail -f /var/log/apache2/error_log'

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

function _update_ps1()
{
	local CURDIR=$(dirname $BASH_SOURCE)
	export PS1="$($CURDIR/powerline-bash/powerline-bash.py $?)"
}
export PROMPT_COMMAND="_update_ps1"
