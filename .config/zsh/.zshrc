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

