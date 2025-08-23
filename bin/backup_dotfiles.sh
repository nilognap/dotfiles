#!/usr/bin/env zsh

dconf dump /org/gnome/ > "$HOME/dotfiles/config/gnome"
cp -r "$HOME/.config/fcitx5" "$HOME/dotfiles/config/"

cd "$HOME/dotfiles"
git add --all
git commit -m "."
git push

