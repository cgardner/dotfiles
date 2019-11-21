autoload -U compinit

export editor='nvim'
export EDITOR='nvim'

plugins=(
	docker
)

for plugin ($plugins); do
    fpath=(~/.dotfiles/zsh/plugins/oh-my-zsh/plugins/$plugin $fpath)
done

zsh_lib=(
  git
  history
  completion
  key-bindings
)

compinit

PATH="./node_modules/.bin:/usr/local/sbin:/usr/local/bin:$PATH"

ZSH_ROOT="$HOME/.dotfiles/zsh"
ZSH_PLUGIN_DIR="$ZSH_ROOT/plugins"

function load_source() {
  DEBUG=$2
  # DEBUG=true

  if [ -z $DEBUG ]; then
    source $1
    return
  fi

  local sourceFile=$1
  timer=$(($(gdate +%s%N)/1000000)) 

  source $sourceFile

  now=$(($(gdate +%s%N)/1000000))
  elapsed=$(($now-$timer))
  echo $elapsed":" $sourceFile
}

function load_dir() {
  LOAD_PATH=$1
  DEBUG=false
  if [ -z $2 ]; then
    DEBUG=$2
  fi

  for filename ($(find $LOAD_PATH -name "*.sh")); do
    load_source $filename $DEBUG
  done
}


load_dir $ZSH_ROOT/config
load_dir $ZSH_ROOT/aliases

for lib ($zsh_lib); do
  load_source $ZSH_PLUGIN_DIR/oh-my-zsh/lib/$lib.zsh
done

load_source $ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
load_source $ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

load_source $ZSH_ROOT/prompt.sh
load_source $ZSH_ROOT/keybindings.sh
load_source $ZSH_ROOT/node.sh
load_source $ZSH_ROOT/variables.sh
load_source $ZSH_ROOT/bell.sh

antibody bundle < $ZSH_ROOT/zsh_plugins.txt
