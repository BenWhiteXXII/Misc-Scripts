#!/bin/sh

notify-send " Updating Website..."
cd ~/Documents/Website/inscription/
hugo
cd public/
git status
read -p "Proceed? y/N: " confirm
if [ "$confirm" == 'y' ]
then
	git add .
	git commit -m "Updated Blog"
	git push origin main
	notify-send "✅ Website Updated"
else
	notify-send "❌ Update Cancelled"
	exit
fi
