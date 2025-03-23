#!/bin/bash

dt=$(date '+%d%m%Y_%H%M%S')

cd ~/Documents/Website/inscription
hugo new content/microposts/$dt.md
st -e nvim content/microposts/$dt.md
