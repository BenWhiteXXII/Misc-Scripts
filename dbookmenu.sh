#!/bin/sh

# Dmenu script to display audiobooks and then select one to play
# If the folder has a mpv watch later file it will resume from there

bookpath=~/Documents/Media/Audiobooks
watchlaterpath=~/.local/state/mpv/watch_later # Default
book=$(ls "$bookpath" | dmenu -i -p "Select Audiobook:")
cd "$bookpath/$book"
if [grep -Rnw "$watchlaterpath" -e "$book"]; then
	bookpos=$(grep -Rnw "$watchlaterpath" -e "$book")
	mpv --force-window --write-filename-in-watch-later-config --save-position-on-quit "$bookpos"
else
	mpv --force-window --write-filename-in-watch-later-config --save-position-on-quit *
fi
