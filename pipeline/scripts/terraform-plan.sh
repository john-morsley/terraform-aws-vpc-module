#!/bin/bash

FOLDER=$1

echo "Folder: $FOLDER"

cd $FOLDER

ls -la

terraform plan