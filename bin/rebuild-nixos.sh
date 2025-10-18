#!/usr/bin/env zsh

set -e

sudo nixos-rebuild switch --flake .#nilo
