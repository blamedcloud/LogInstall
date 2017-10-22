#!/bin/bash
#install_from_log.sh
###USAGE### install_from_log.sh <log_file_path>; sms=N ; $#=1
if [ $# -eq 0 ]
then
	echo "ERROR: expected name of log file to install packages from."
else
	contents=$(cat $1 | cut -d, -f1)
	log_install.sh $contents
fi
