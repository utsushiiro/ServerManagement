export RBENV_ROOT=/usr/local/rbenv
if [ -d "${RBENV_ROOT}" ]; then
  export PATH="$RBENV_ROOT/bin:$PATH"
  eval "$(rbenv init -)"
fi