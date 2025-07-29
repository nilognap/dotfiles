#!/usr/bin/env bash
# ~/dotfiles/switch.sh

set -euxo pipefail

git add --all

# if [ "$(uname)" == "Linux" ] ; then
	# sudo nixos-rebuild switch --flake .#$(hostname -s)
# elif [ "$(uname)" == "Darwin" ] ; then
	# home-manager switch --flake .#$USER
# else
	# echo "what are you on"
# fi

sudo nixos-rebuild switch --flake .#$(hostname -s)
