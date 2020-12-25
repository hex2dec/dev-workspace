#!/usr/bin/env bash

echo "Updating SpaceVim configuration..."

__dirname=$(dirname $0)
config_path=${__dirname}"/init.toml"

cp -f $config_path ~/.SpaceVim.d/init.toml

echo "Updated SpaceVim configuration."
