#!/bin/bash

[ ! -d "$HOME/bin" ] && mkdir $HOME/bin

thisDir=$(pwd)
for script in $(ls scripts/)
do
	ln -s $thisDir/scripts/$script $HOME/bin/$script
done
