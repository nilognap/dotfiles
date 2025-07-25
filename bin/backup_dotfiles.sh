#!/usr/bin/env zsh

dconf dump /org/gnome/ > "$HOME/dotfiles/config/gnome"

cd "$HOME/dotfiles"
git add --all
git commit -m "."
git push

