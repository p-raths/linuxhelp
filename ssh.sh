#!/bin/bash

echo "Add ssh config"

PATH_FOLDER = /home/$USER/.ssh
PATH_SSH = /home/$USER/.ssh/config

if [! -d $PATH_FOLDER]
then
	mkdir $PATH_FOLDER
fi 
if [! -e $PATH_SSH]
then
	touch $PATH_SSH
fi

while true; do
	read -p "Do you want to add a new ssh host: [yes/no]" yn
	case $yn in
	[Yy]* )
	read -p "Host Name: " host
	read -p "Address: " adress 
	read -p "Port: " port
	read -p "Username: " user

	echo "Host $host" >> $PATH_SSH
	echo "	HostName $adress" >> $PATH_SSH
	echo "	Port $port" >> $PATH_SSH
	ehco "	USER $user" >> $PATH_SSH
	break;;
	
	[Nn]* ) $CHECK = false;  exit;;
	* ) echo echo "Please answer yes or no.";;
done



 
su 
