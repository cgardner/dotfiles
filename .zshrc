# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
local my_file=${(%):-%N}

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="afowler"
ZSH_THEME="agnoster-craig"
#ZSH_THEME="minimal"
#ZSH_THEME="alanpeabody"
#ZSH_THEME="awesomepanda"
# ZSH_THEME="crunch"
# ZSH_THEME="daveverwer"
# ZSH_THEME="dogenpunk"
# ZSH_THEME="edvardm"
# ZSH_THEME="robbyrussell" # like the two levels of directory
# ZSH_THEME="fwalch"
#ZSH_THEME="gallifrey"
# ZSH_THEME="blinks"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump mvn zsh-autosuggestions vi-mode)

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:./vendor/bin:./node_modules/.bin:/usr/local/heroku/bin:/Users/gardnerc/.local/bin:~/bin:/usr/local/opt/go/libexec/bin:$HOME/.phpenv/bin"
export PATH="/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/local/sbin:$HOME/.jenv/bin:$PATH:/Users/gardnerc/src/cf-terraform-build/bin"
export PATH="$HOME/.deno/bin:$HOME/.cargo/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# JAVA Configuration
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home/"
export MAVEN_OPTS="-Xms2048m -Xmx2048m -XX:PermSize=256m -XX:MaxPermSize=512m"
export M2_HOME="$(brew --prefix)/Cellar/maven/3.3.9/libexec"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export editor='vim';
export EDITOR='vim';
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zref=". ~/.zshrc"
alias sshconfig="vim ~/.ssh/config"
alias nr="npm run"
alias ni="npm i"
alias j="autojump"

export HOMEBREW_GITHUB_API_TOKEN="aa01166f0ba1169f68af2bcb47b15803bb1ccdb7"

# Lazy Loading NVM
nvm() {
    export NVM_DIR="/Users/gardnerc/.nvm"
    [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
    nvm "$@"
}

proxyon() {
    export http_proxy="http://ep.threatpulse.net:80"
    export https_proxy="http://ep.threatpulse.net:80"
}

proxyoff() {
    export http_proxy=""
    export https_proxy=""
}
proxyoff()
export PATH="/usr/local/opt/curl/bin:$PATH"
npm-reset() {
    if [ ! -f ./node_modules ] || [ ! -f ./package.json ]; then
        exit 0
    fi

    rm -rf node_modules;
    npm install
}

alias tf="terraform"

alias kill_snap='sudo pkill "Snap Client"'
alias upgrayedd='HOMEBREW_INSTALL_CLEANUP=true brew upgrade && brew cask upgrade && brew cleanup && mas upgrade && upgrade_oh_my_zsh'
alias trim='find . -type f -exec convert -trim {} {} \;'
alias drun='docker run --rm'
alias mux='tmuxinator'

eval "$(jenv init -)"

source ~/src/dotfiles/zsh/keybindings.zsh
