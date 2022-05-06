#!/bin/bash
#log_install.sh
###USAGE### log_install.sh <package> [package2 package3 ... packageN] ; sms=N ; $#=1+
if [ $# -eq 0 ]
then
	echo "ERROR: expected name of package to log and install."
else
	[ ! -d "$HOME/logs" ] && mkdir $HOME/logs

    tempFile=
    if [ -f $HOME/logs/package_logs.txt ]
    then
        tempFile=$(mktemp)
        cat $HOME/logs/package_logs.txt | cut -d',' -f1 | sort | uniq > $tempFile
    fi

	while [ $# -gt 0 ]
	do
        if [ -n "$tempFile" ] && [ $(grep "^$1$" $tempFile | wc -l) -gt 0 ]
        then
            echo -e "\nPackage $1 already installed.\n"
        else
            sudo apt-get install $1
            if [ $? -eq 0 ]
            then
                echo "$1," $(date) >> $HOME/logs/package_logs.txt
                echo -e "\nPackage $1 installed succesfully! yay\n"
            else
                echo -e "\nPackage $1 failed to install for some reason. :(\n"
                echo "$1," $(date) >> $HOME/logs/failed_install_logs.txt
            fi
        fi
        shift 1
	done

    if [ -n "$tempFile" ]
    then
        rm $tempFile
    fi
fi
