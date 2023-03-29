#!/bin/bash

# check command exists
if command -v github-copilot-cli &> /dev/null
then
  eval "$(github-copilot-cli alias -- "$0")"
fi
