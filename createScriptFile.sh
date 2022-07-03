#!/bin/bash

echo "Check or create dir"

dirName=$1

if [ -d "$dirName" ]
then	
  echo "Reading $dirName contents"
  ls "$dirName"
else 
  echo "Dir $dirName not found. Creating one."
  mkdir "$dirName"
  echo "Creating readme"
  touch "$dirName/README.md"
fi

read -p "Enter the name of a new script file to be created: " scriptFile
touch "$dirName/$scriptFile.sh"
chmod 764 "$dirName/$scriptFile.sh"
echo "Reading $dirName contents"
ls -l "$dirName"
