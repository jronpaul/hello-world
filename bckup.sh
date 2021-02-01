#!/bin/bash                                                                                                                                              
# This bash script is used to backup a user's home directory to /tmp/.
#
#
bckup ()
{
rsync -avn /home/$1 /tmp/
}

if [ -z $1 ]; then                                                       
        user=$(whoami)                                                 
	
else                                                                       
        if [ ! -d "/home/$1" ]; then                                             
                echo "Requested $1 user home directory doesn't exist."                                                                                                                                                                                                         
                exit 1                                                   
	else
	echo " backing up $1 user home directory at `ls -d /home/$1`"
sleep 5
	bckup
        fi                                                                
        user=$1                                                       
fi
#
