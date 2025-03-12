#!/bin/bash

mkdir ~/.config
stow .
sleep 1

for dir in ~/.config/*/
do	
	path=$(find ${dir} -type f -regex ".[A-z].+")
	file=$(find ${dir} -type f -regex ".[A-z].+" -printf '%f\n')	
	ln -sf $path $HOME/$file
	echo $(readlink $HOME/$file)
done
echo "Symlinks created successfully!"

# Delete's broken links found
# find $HOME -xtype l -delete