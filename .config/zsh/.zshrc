eval "$(anyenv init -)"

if [ ! -d $XDG_DATA_HOME/zsh ]; then
  mkdir -p $XDG_DATA_HOME/zsh
fi
HISTFILE="$XDG_DATA_HOME/zsh/history"
HISTSIZE=1000000
SAVEHIST=1000000

setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_find_no_dups
setopt hist_save_no_dups
setopt hist_beep
setopt hist_verify
setopt inc_append_history
setopt share_history

if command -v gsed >/dev/null 2>&1; then
  alias sed=gsed
fi

if command -v gawk >/dev/null 2>&1; then
  alias awk=gawk
fi

if command -v rg > /dev/null 2>&1; then
  export GREP=rg
elif command -v ag > /dev/null 2>&1; then
  export GREP=ag
else
  export GREP=grep
fi

alias -g L="| less"
alias -g B="| bat"
alias -g G="| $GREP"
alias -g H="| head"
alias -g T="| tail"
alias -g S="| sed"
alias -g A="| awk"

if command -v hub > /dev/null 2>&1; then
  alias git=hub
fi
alias g=git
alias gs='g status'
alias ga='g add'
alias gcm='g commit -m'

alias t='tmux'
alias tls='tmux ls'
alias tat='tmux attach -t'
