HISTFILE=~/.zhistory
HISTSIZE=5000
SAVEHIST=5000
# Don't keep duplicate commands in history
setopt HIST_IGNORE_ALL_DUPS

if [ -r $(brew --prefix)/opt/mcfly/mcfly.bash ]; then
  . $(brew --prefix)/opt/mcfly/mcfly.bash
fi
