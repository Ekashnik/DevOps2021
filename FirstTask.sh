#!/bin/bash

username=$1
folder=$2

if [[ ! $(id $username) ]]; 
    if [ ! -d "$folder" ]; 
        sudo  chown -R $username:$username $folder
        echo "complete"
        exit
    then
    echo "Directory does not exist"
    exit
    fi
then
  echo "User does not exist"
  exit
fi
