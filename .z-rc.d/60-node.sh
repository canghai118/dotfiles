#!/bin/bash

lazy_load_nvm() {

  unset -f node nvm yarn pnpm

  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

node() {
  lazy_load_nvm
  node $@
}

nvm() {
  lazy_load_nvm
  nvm $@
}

yarn() {
  lazy_load_nvm
  yarn $@
}

pnpm() {
  lazy_load_nvm
  pnpm $@
}


# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
if [ -d "$PNPM_HOME" ]; then
  export PATH="$PNPM_HOME:$PATH"
fi
# pnpm end #
