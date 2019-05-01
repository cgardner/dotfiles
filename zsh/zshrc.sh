autoload -U compinit

export editor='vim'
export EDITOR='vim'

plugins=(
	docker
)

for plugin ($plugins); do
    fpath=(~/dotfiles/zsh/plugins/oh-my-zsh/plugins/$plugin $fpath)
done

compinit

ZSH_ROOT="$HOME/src/dotfiles/zsh"
ZSH_PLUGIN_DIR="$ZSH_ROOT/plugins"
source $ZSH_PLUGIN_DIR/oh-my-zsh/lib/git.zsh
source $ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

source $ZSH_ROOT/aliases.sh
source $ZSH_ROOT/prompt.sh