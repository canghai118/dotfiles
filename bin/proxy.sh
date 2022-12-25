#!/bin/bash

cmd=$1
if [[ "$cmd" != "switch" && "$cmd" != "off" && "$cmd" != "on" ]]; then
  cmd="switch"
fi


proxy=${DEFAULT_PROXY:-http://127.0.0.1:1080}

state=$http_proxy_state
if [[ "$state" != "on" ]]; then
  state="off"
fi


set_proxy_on(){
  export http_proxy=$proxy
  export https_proxy=$proxy
  export http_proxy_state=on
  echo "proxy on"
}

set_proxy_off(){
  unset http_proxy
  unset https_proxy
  export http_proxy_state=off
  echo "proxy off"
}

if [[ "$cmd" == "switch" ]]; then
  if [[ $state == "on" ]]; then
    set_proxy_off;
  else
    set_proxy_on;
  fi
elif [[ "$cmd" == "on" ]]; then
  set_proxy_on;
else 
  set_proxy_off;
fi

