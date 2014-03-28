export EDITOR="vim"
export PATH="$PATH:~/bin"
export WORKING_DIR="$HOME/src"
export TERM="xterm-256color"

alias g='git'

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
	which tmux >/dev/null 2> /dev/null
	if [ $? != 0 ]; then
		return
	fi

	local SESSION="${1}"
	# If there isn't an existing tmux session with that name, create one
	local PROJECT_DIR="$WORKING_DIR/$SESSION"
	if [ ! -d "$PROJECT_DIR" -a -d "$SESSION" ]; then
		PROJECT_DIR=$SESSION
		SESSION=`basename $SESSION`
	fi

	if [ -d "$PROJECT_DIR/repo" ]; then
		PROJECT_DIR="$PROJECT_DIR/repo"
	fi

	tmux has-session -t $SESSION
	if [ $? -eq 1 ]; then
		echo "starting the session..."
		tmux start-server \; \
			new-session -d -s $SESSION \; \
			set-option default-path $PROJECT_DIR \; \
			set-window-option -t $SESSION -g automatic-rename off  \; \
			new-window -t $SESSION:0 -k -n vim 'vim' \; \
			split-window -h -p 40 -t $SESSION:0 \; \
			select-pane -t 1

#		if [ "$APACHE_LOGS" -ne "" -a -f $APACHE_LOGS ]; then
#			local LOG_CMD="tail -f $APACHE_LOGS"
#			local CCZE_BIN=`which ccze`
#			if [ $? == 0 ]; then
#				LOG_CMD="$LOG_CMD | $CCZE_BIN -A"
#			fi
#			tmux split-window -d -t $SESSION:0 "$LOG_CMD"
#		fi


#		if [ -f "$PROJECT_DIR/Vagrantfile" ]; then
#			tmux new-window -t $SESSION:1 -k -n vagrant 'cd $PROJECT_DIR && vagrant up'
#		fi
	else
		echo "Not starting a session"
	fi

	tmux has-session -t $SESSION
	if [ $? -ne 1 ]; then
		tmux attach -t $SESSION
	fi
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

. ./powerline/bindings/bash/powerline.sh
