#!/usr/bin/env zsh

dconf dump /org/gnome/ > "$HOME/dotfiles/config/gnome"
rsync -av --delete "$HOME/.config/fcitx5" "$HOME/dotfiles/config"

cd "$HOME/dotfiles"
git add --all
git commit -m "."
git push

