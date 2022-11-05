#!/bin/bash

echo "Checking folder"
ls -lart

# Starts checking the format of the secret name
echo "Checking secret name..."
echo $SECRET_NAME

# All symbols are replaced with underscores and all numbers are removed
FORMATED_SN=$(echo $SECRET_NAME | sed -e 's/[^a-zA-Z0-9]/_/g' -e 's/[0-9]//g')

# All letters are transformed to upper case
FORMATED_SN=$(echo ${FORMATED_SN^^})

echo "Secret name:"
echo $FORMATED_SN

echo "Secret value:"
echo $SECRET_VALUE

