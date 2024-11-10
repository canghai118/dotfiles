#!/bin/sh

lazy_load_jenv() {
  unalias java
  if [ -d "$HOME/.jenv" ]; then
      export PATH=$PATH:$HOME/.jenv/bin
      eval "$(jenv init -)"
      #_evalcache jenv init -
  fi
}

lazy_java() {
  lazy_load_jenv
  java $@
}


if [ -d "$HOME/.jenv" ]; then
  alias java=lazy_java
fi

