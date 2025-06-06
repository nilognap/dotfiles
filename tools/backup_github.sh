#!/usr/bin/env zsh


local directories=(
	"$HOME/code/dotfiles"
	"$HOME/code/tools"
)

for dir in $directories; do
	if [[ ! -d "$dir" ]]; then
		# If directory doesn't exist, print error and exit
		echo "Warning: Source directory $dir does not exist - skipping"
		continue
	fi
	# rsync -av --delete "$dir" "$backup_path"

	cd "$dir"
	git add --all
	git commit -m "."
	git push
done

echo "DONE YAYAYAYAYAY"

