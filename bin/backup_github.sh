#!/usr/bin/env zsh


local directories=(
	"$HOME/dotfiles"
)

for dir in $directories; do
	if [[ ! -d "$dir" ]]; then
		echo "Warning: Source directory $dir does not exist - skipping"
		continue
	fi

	cd "$dir"
	git add --all
	git commit -m "."
	git push
done

