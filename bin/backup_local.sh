#!/usr/bin/env zsh

local directories=(
	"$HOME/dotfiles"
)

local backup_root="$HOME/storage/bak"


for dir in $directories; do
	if [[ ! -d "$dir" ]]; then
		echo "Warning: Source directory $dir does not exist - skipping"
		continue
	fi
	local dir_name="${${dir:t}%.}"
	local backup_path="$backup_root/${dir_name}.bak"
	rsync -av --delete "$dir/" "$backup_path"
done

