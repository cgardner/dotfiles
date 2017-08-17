# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
local my_file=${(%):-%N}

. $HOME/.ngcompletion.zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="afowler"
#ZSH_THEME="agnoster"
#ZSH_THEME="alanpeabody"
#ZSH_THEME="awesomepanda"
# ZSH_THEME="crunch"
# ZSH_THEME="daveverwer"
# ZSH_THEME="dogenpunk"
# ZSH_THEME="edvardm"
# ZSH_THEME="evan" // like the two levels of directory
# ZSH_THEME="fwalch"
#ZSH_THEME="gallifrey"
ZSH_THEME="blinks"

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
ENABLE_CORRECTION="true"

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
plugins=(git tmux git-flow-avh brew projects yarn phing npm docker)

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:./vendor/bin:./node_modules/.bin:/usr/local/heroku/bin:/Users/gardnerc/.local/bin:~/bin:/usr/local/opt/go/libexec/bin:$HOME/.phpenv/bin"
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/.jenv/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# JAVA Configuration
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home/"
export MAVEN_OPTS="-Xms2048m -Xmx2048m -XX:PermSize=256m -XX:MaxPermSize=512m"
export M2_HOME="$(brew --prefix)/Cellar/maven/3.3.9/libexec"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zref=". ~/.zshrc"
#alias consul="consul agent -server -bootstrap-expect 1 -data-dir /tmp/consul -advertise=127.0.0.1 -ui-dir /opt/homebrew-cask/Caskroom/consul-web-ui/0.6.0"
alias sshconfig="vim ~/.ssh/config"
alias c="php -n -d memory_limit=-1 /usr/local/bin/composer"
alias nr="npm run"
alias ni="npm i"

export HOMEBREW_GITHUB_API_TOKEN="4b961ac37270c23022e13bd4abbef704263c186f"

export NVM_DIR="/Users/gardnerc/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
[[ -f /usr/local/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh ]] && . /usr/local/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh

proxyon() {
    export http_proxy="http://ep.threatpulse.net:80"
    export https_proxy="http://ep.threatpulse.net:80"
}

proxyoff() {
    export http_proxy=""
    export https_proxy=""
}
proxyoff()
export http_proxy=""
export https_proxy=""
eval "$(jenv init -)"
