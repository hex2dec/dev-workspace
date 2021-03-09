#!/usr/bin/env bash

set -eo pipefail

help() {
  cat << EOF
usage: $0 [OPTIONS]
    --help               Show this message
    --config             Update vim configuration
EOF
}

update_config() {
  echo "update vim configuration"
  cp -f $(dirname $0)/vimrc ~/.vimrc
}

for opt in "$@"; do
  case $opt in
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


