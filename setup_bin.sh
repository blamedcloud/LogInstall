#!/bin/bash

[ ! -d "$HOME/bin" ] && mkdir $HOME/bin

thisDir=$(pwd)
for script in $(ls scripts/)
do
    [ -f $HOME/bin/$script ] && rm $HOME/bin/$script
    ln -s $thisDir/scripts/$script $HOME/bin/$script
done
