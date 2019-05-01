autoload -U compinit

export editor='vim'
export EDITOR='vim'

plugins=(
	docker
)

for plugin ($plugins); do
    fpath=(~/dotfiles/zsh/plugins/oh-my-zsh/plugins/$plugin $fpath)
done

zsh_lib=(
  git
  history
  completion
  key-bindings
)

compinit

ZSH_ROOT="$HOME/src/dotfiles/zsh"
ZSH_PLUGIN_DIR="$ZSH_ROOT/plugins"

for lib ($zsh_lib); do
    source $ZSH_PLUGIN_DIR/oh-my-zsh/lib/$lib.zsh
done

source $ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_PLUGIN_DIR/zsh-touchbar/zsh-iterm-touchbar.plugin.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

source $ZSH_ROOT/aliases.sh
source $ZSH_ROOT/prompt.sh