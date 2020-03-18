#!/bin/bash                                                                                                                                              
# This bash script is used to backup a user's home directory to /tmp/.                                                                                                                                                                                                         
if [ -z $1 ]; then                                                       
        user=$(whoami)                                                 
else                                                                       
        if [ ! -d "/home/$1" ]; then                                             
                echo "Requested $1 user home directory doesn't exist."                                                                                                                                                                                                         
                exit 1                                                   
        fi                                                                
        user=$1                                                       
fi                                                                                                                                                                                                                                                                             
