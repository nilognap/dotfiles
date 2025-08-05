#!/usr/bin/env bash
# ~/dotfiles/switch.sh

set -euxo pipefail

git add --all

sudo nixos-rebuild switch --flake .#$(hostname -s)
