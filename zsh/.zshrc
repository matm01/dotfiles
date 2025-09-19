# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


#cat .ai.txt
#neofetch
alias ls='eza -al --color=always --group-directories-first'
alias v='nvim'
alias gearlever='flatpak run it.mijorus.gearlever'
alias vim='nvim'
alias ...='cd ../..'
alias ..='cd ..'
alias gloga='git log --all --oneline --graph'
alias c='xsel --input --clipboansrd'
alias p='xsel --output --clipboard'
#alias pt='yt --transcript '
alias cn='() { > ~/Documents/braintree/braintree/$1.md}'
alias extract_wisdom='() { yt --transcript $1 | fabric -sp extract_wisdom; } '
pt() {
    local video_link="$1"
    fabric -y "$video_link" --transcript
}

### nvim as MANPAGER
#export MANPAGER="nvim -c 'set ft=man' -"

### bat as MANPAGER
export MANPGER="sh -c 'col -bx |bat -l man -p'"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/matm/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
compinit
_comp_options+=(globdots)

# End of lines added by compinstall
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# fuzzy finder shell integration
source <(fzf --zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/.zsh-vi-mode/zsh-vi-mode.plugin.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# vi mode
#bindkey -v
#bindkey "^[[3~" delete-char

# Use vim keys in tab complete menu:
#bindkey -M menuselect 'h' vi-backward-char
#bindkey -M menuselect 'j' vi-down-line-or-history
#bindkey -M menuselect 'k' vi-up-line-or-history
#bindkey -M menuselect 'l' vi-forward-char
#bindkey -M menuselect 'left' vi-backward-char
#bindkey -M menuselect 'down' vi-down-line-or-history
#bindkey -M menuselect 'up' vi-up-line-or-history
#bindkey -M menuselect 'right' vi-forward-char

#colored man pages
export PAGER="most"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/matm/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/matm/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/matm/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/matm/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



# env varibles
export DV_BUCKET="sar-sentinel-1-tiff"
export PROJECT_ID="dsr-vessel-project"
#export YOLO_VERBOSE=False
export SAR_BUCKET="sar-sentinel-1-tiff"

# Created by `pipx` on 2024-05-22 16:36:30
export PATH="$PATH:/home/matm/.local/bin"

export CUDA_HOME=$CONDA_PREFIX

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/matm/Documents/coding/Assistants/Assistant/.venv/lib64/python3.12/site-packages/nvidia/cublas/lib:/home/matm/Documents/coding/Assistants/Assistant/.venv/lib64/python3.12/site-packages/nvidia/cudnn/lib

export GOPATH=$HOME/go

export PATH=$GOPATH/bin:$HOME/.local/bin:$PATH

export PATH=$PATH:/usr/bin/wine
export PATH="$PATH:/home/matm/.modular/bin"

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
