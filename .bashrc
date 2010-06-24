if [ -z "$STY" ]; then
	screen -dRR
fi

export PATH="$PATH:~/Dropbox/src/android/tools"

export EDITOR="mate -w"

alias dropbox="cd ~/Dropbox"
alias workspace="cd ~/Dropbox/Workspace"
alias src="cd ~/Dropbox/src"
alias zf="~/Dropbox/src/ZendFramework/bin/zf.sh"
alias php="/Applications/MAMP/bin/php5.3/bin/php"

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
