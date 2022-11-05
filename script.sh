#!/bin/bash

echo "Checking folder"
ls -lart

# Starts checking the format of the secret name
echo "Checking secret name..."
echo $SECRET_NAME

# All symbols are replaced with underscores and all numbers are removed from the secret name
FORMATED_SN=$(echo $SECRET_NAME | sed -e 's/[^a-zA-Z0-9]/_/g' -e 's/[0-9]//g')

# All letters are transformed to upper case in the secret name
FORMATED_SN=$(echo ${FORMATED_SN^^})

# Removing any white space in the secret value
FORMATED_SV=$(echo $SECRET_VALUE | tr -d '[:space:]')

echo "Secret name:"
echo $FORMATED_SN

echo "Secret value:"
echo $FORMATED_SV

grep $FORMATED_SN secrets.txt
if [ $? -eq 0 ]; then
   CURRENT_SECRET=$(grep $FORMATED_SN secrets.txt)
   sed -i "s/$CURRENT_SECRET//" secrets.txt
fi

echo "$FORMATED_SN: $FORMATED_SV" >> secrets.txt

sort -o secrets.txt secrets.txt

cat secrets.txt


