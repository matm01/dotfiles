# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


alias ls='eza -al --color=always --group-directories-first'
alias v='nvim'
alias gearlever='flatpak run it.mijorus.gearlever'
alias vim='nvim'
alias ...='cd ../..'
alias ..='cd ..'
alias gloga='git log --all --oneline --graph'
alias c='xsel --input --clipboansrd'
alias p='xsel --output --clipboard'
alias cn='() { > ~/Documents/braintree/braintree/$1.md}'
alias extract_wisdom='() { yt --transcript $1 | fabric -sp extract_wisdom; } '
alias upa='sudo dnf update -y && flatpak update -y && gearlever --update --all -y'
pt() {
    local video_link="$1"
    fabric -y "$video_link" --transcript
}

### bat as MANPAGER
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANPAGER="sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat -p -lman'"


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/matm/.zshrc'

autoload -Uz compinit
#zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu no

compinit
_comp_options+=(globdots)

# End of lines added by compinstall
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# fuzzy finder shell integration
eval "$(fzf --zsh)"

# zoxide integration
eval "$(zoxide init --cmd cd zsh)"

export FZF_DEFAULT_COMMAND='fd --hidden --strip-cwd-prefix --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export FZF_DEFAULT_OPTS="--height=50% --layout=default --border --color=hl:#2dd4bf"
export FZF_TMUX_OPTS=" -p90%,70% "

# setup fzf prewiew 
export FZF_CTRL_T_OPTS="--preview 'if [[ {} =~ ('.jpg'|'.JPG'|'.jpeg'|'.png'|'.PNG')$ ]]; then catimg -r2 -w$COLUMNS {};else bat --color=always -n --line-range=:500 {};fi'"
export FZF_ALT_C_OPTS="--preview 'eza --tree -color=always {} | head -200'"



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh
source ~/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh
zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')

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


# Created by `pipx` on 2024-05-22 16:36:30
export PATH="$PATH:/home/matm/.local/bin"

export CUDA_HOME=$CONDA_PREFIX

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/matm/Documents/coding/Assistants/Assistant/.venv/lib64/python3.12/site-packages/nvidia/cublas/lib:/home/matm/Documents/coding/Assistants/Assistant/.venv/lib64/python3.12/site-packages/nvidia/cudnn/lib

export GOPATH=$HOME/go

export PATH=$GOPATH/bin:$HOME/.local/bin:$PATH

export PATH=$PATH:/usr/bin/wine
export PATH="$PATH:/home/matm/.modular/bin"

. "$HOME/.atuin/bin/env"
. "$HOME/.cargo/env"

eval "$(atuin init zsh)"

# To customize prompt, run `p10k configure` or edit ~/dotfiles/p10k/.p10k.zsh.
[[ ! -f ~/dotfiles/p10k/.p10k.zsh ]] || source ~/dotfiles/p10k/.p10k.zsh

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/matm/.lmstudio/bin"
# End of LM Studio CLI section

