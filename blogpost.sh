#!/bin/sh

dt=$(date '+%d%m%Y_%H%M%S')
year=$(date '+%Y')

cd ~/Documents/Website/inscription
hugo new content/posts/$year/$dt.md
st -e nvim content/posts/$year/$dt.md
