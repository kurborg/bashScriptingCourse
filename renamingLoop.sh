#!/bin/bash

pictures=$(ls pictures/*jpg*)
date=$(date +%F)

for pic in $pictures
do
    echo "renaming $pic to ${pic}-${date}"
    mv $pic ${pic}-${date}
done