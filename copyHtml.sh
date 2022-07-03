#!/bin/bash

for FILE in ./html/*.html
do
    echo "Copying $FILE"
    cp $FILE ./just-html/
done