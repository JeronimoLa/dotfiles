#!/bin/bash

# Step 1: Use Stow to create the primary symlink
#
mkdir ~/.config

stow .

for dir in ~/.config/*/
do	
	path=$(find ${dir} -type f -regex ".[A-z].+")
	file=$(find ${dir} -type f -regex ".[A-z].+" -printf '%f\n')	
	ln -sf $path $HOME/$file
done


echo "Symlinks created successfully!"
