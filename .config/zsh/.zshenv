path=(
  $HOME/.local/bin
  /usr/local/bin(N-)
  /usr/bin(N-)
  /bin(N-)
  /usr/local/sbin(N-)
  /usr/sbin(N-)
  /sbin(N-)
)

export LANG=en_US.UTF-8

if command -v nvim > /dev/null 2>&1; then
  export EDITOR=nvim
elif command -v vim > /dev/null 2>&1; then
  export EDITOR=vim
elif command -v vi > /dev/null 2>&1; then
  export EDITOR=vi
fi

export LESS=-FiMqRX

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
