#!/bin/bash
#setup.sh
###USAGE### setup.sh ; sms=N ; $#=0

###First, add this folder to the PATH, so you can execute these commands from anywhere.
path=$(cat /etc/environment)	#grabs PATH variable from /etc/environment
				#perhaps consider extending to other 
here=$(dirname $(readlink -f "$0"))
echo $path | grep $here -q
if [ $? -eq 0 ]
then
	echo "$here is already on the path."
else
	echo "Adding $here to the path."
	path="${path::-1}:$here\""
	echo $path > /etc/environment
fi

###Next, update PATH for this session.
#This only updates it for root.
source /etc/environment && export PATH
#get user names (only tested with one user so far...)
user=$(who | cut -d' ' -f1)
#update PATH for all logged-in users. (I think)
su -c $(source /etc/environment && export PATH) $user
