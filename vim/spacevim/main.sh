#!/usr/bin/env bash

set -eo pipefail

help() {
  cat << EOF
usage: $0 [OPTIONS]
    --help               Show this message
    --install            Install space-vim
    --update             Update space-vim
    --config             Update Custom Configuration
EOF
}

install_space_vim() {
  bash <(curl -fsSL https://raw.githubusercontent.com/liuchengxu/space-vim/master/install.sh)
}

update_space_vim() {
  bash <(curl -fsSL https://raw.githubusercontent.com/liuchengxu/space-vim/master/install.sh) --update
}

update_config() {
  echo "update custom configuration for space-vim"
  cp -f $(dirname $0)/spacevim.vim ~/.spacevim
}

for opt in "$@"; do
  case $opt in
    --install)
      install_space_vim
      exit 0
      ;;
    --update)
      update_space_vim
      exit 0
      ;;
    --config)
      update_config
      exit 0
      ;;
    --help)
      help
      exit 0
      ;;
    *)
      echo "unknown option: $opt"
      help
      exit 1
      ;;
  esac
done


