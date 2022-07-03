#!/bin/bash

echo "Running script $0"

var1=$1

if [ "$var1" = "true" ]
then
    echo "var1 is true"
elif [ "$var1" = "false" ]
then
    echo "var1 is false"
else
    echo "var1 is neither true nor false"
fi