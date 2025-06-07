#!/usr/bin/env zsh

local directories=(
	"$HOME/code/dotfiles"
	"$HOME/code/tools"
	"$HOME/code/notes"
)

local backup_root="$HOME/code/bak"


for dir in $directories; do
	if [[ ! -d "$dir" ]]; then
		echo "Warning: Source directory $dir does not exist - skipping"
		continue
	fi
	local dir_name="${${dir:t}%.}"
	local backup_path="$backup_root/${dir_name}.bak"
	rsync -av --delete "$dir/" "$backup_path"
done

echo "DONE YAYAYAYAYAY"
