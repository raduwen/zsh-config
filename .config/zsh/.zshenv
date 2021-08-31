export LANG=en_US.UTF-8

if command -v nvim > /dev/null 2>&1; then
  export EDITOR=nvim
elif command -v vim > /dev/null 2>&1; then
  export EDITOR=vim
elif command -v vi > /dev/null 2>&1; then
  export EDITOR=vi
fi
