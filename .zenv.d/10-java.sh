#!/bin/sh

if [ -d "$HOME/.jenv" ]; then
    export PATH=$PATH:$HOME/.jenv/bin
    eval "$(jenv init -)"
fi

