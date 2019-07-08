POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_VCS_BACKENDS=(git)
POWERLEVEL9K_VCS_MAX_SYNC_LATENCY_SECONDS=.05

load_source $ZSH_PLUGIN_DIR/powerlevel10k/powerlevel10k.zsh-theme
load_source $ZSH_PLUGIN_DIR/zsh-prompt-benchmark/zsh-prompt-benchmark.plugin.zsh
