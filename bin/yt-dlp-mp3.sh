#!/usr/bin/env zsh

# check for "url" argument
if [ $# -ne 1 ]; then
	echo "Usage: $0 \"<url>\""
	exit 1
fi

# -x = audio only
# -w = do not overwrite files
# --audio-format mp3 = mp3
# --audio-quality 320K = 320K
# --no-mtime = "last modified" metadata
# --no-playlist = do not download the entire playlist

yt-dlp -x -w --audio-format mp3 --audio-quality 320K --no-mtime --no-playlist $1
