#!/bin/bash

# Generate an index.md file containing a list of all games. Must be run from a choicescript root folder, i.e. one with a web/ folder in it that contains a sub-folder for each game.

# Optionally, if there's an images/ folder in the game folder, a link to this image is included. Also, optionally, if there's a gamedesc.txt file in the game folder, its contents will also be included.

# By default, the game name is the folder name, but if the first line in gamedesc.txt begins with "Title:", the rest of that line will be used instead.

#################
# CONFIGURATION #
#################

declare -a folderIgnore=("images" "mygame")
title="My Games"

####################
# HELPER FUNCTIONS #
####################
containsElement () {
  local e
  for e in "${@:2}"; do [[ "$e" == "$1" ]] && return 0; done
  return 1
}

#############
# MAIN CODE #
#############

outputmd=""
for d in web/*/ ; do
	gamename=$(basename "$d")
	containsElement "$gamename" "${folderIgnore[@]}"
	if [ $? -eq 1 ]; then
		outputmd+="### [$gamename](web/$gamename/)"
		outputmd+=$'\n'
	fi
done

cat << EOF > index.md
# $title
$outputmd
EOF
