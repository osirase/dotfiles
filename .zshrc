# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## We like xdg
export XDG_CONFIG_HOME=$HOME/.config

## history
#setopt APPEND_HISTORY
## for sharing history between zsh processes
#setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=1000

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
#colors
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

export XDG_CONFIG_HOME=$HOME/.config
export PATH="$HOME/.config/emacs/bin/:$PATH"

# Disable wildcard expansion errors (no matches found) for better shell behaviour
unsetopt NOMATCH

# Enable Menu Selection for Tab Completion
zstyle ':completion:*' menu select

# Enable Menu Selection for SSH Hosts via ~/.ssh/known_hosts
zstyle ':completion:*:hosts' menu select

## Check if tmux is installed
#if command -v tmux &> /dev/null; then
#    # Check if already in a tmux session
#    if [ -n "$TMUX" ]; then
#      true
#    else
#        # Search for a tmux session named '1'
#        if tmux has-session -t 1 &> /dev/null; then
#            # If session exists, attach to it
#            tmux attach -t 1
#        else
#            # If session doesn't exist, create it and attach
#            tmux new-session -s 1
#        fi
#    fi
#else
#    echo "Tmux is not installed. Skipping tmux session setup."
#fi
