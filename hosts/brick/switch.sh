#!/usr/bin/env zsh

git add --all
sudo nixos-rebuild switch --flake .#$(hostname -s)
