#!/bin/bash

echo "Add ssh config"

mkdir ~/.ssh
touch ~/.ssh/config

$PATH_SSH

whyle {again=y or again = Y}
do
read -p "Host Name: " host
read -p "Address: " adress 
read -p "Port: " port
read -p "Username: " user

echo "Host $host" >> $PATH_SSH
echo "	HostName $adress" >> $PATH_SSH
echo "	Port $port" >> $PATH_SSH
ehco "	USER $user" >> $PATH_SSH

done


 
su 
