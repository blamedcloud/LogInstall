#!/bin/bash

[ ! -d "$HOME/bin" ] && mkdir $HOME/bin

thisDir=$(pwd)
for script in $(ls bin/)
do
    [ -f $HOME/bin/$script ] && rm $HOME/bin/$script
    ln -s $thisDir/bin/$script $HOME/bin/$script
done
