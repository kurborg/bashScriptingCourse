#!/bin/bash -evx
# -x = Set Debugging on
# -e = Exit on error
# -v = prints shell commands as they are read
set -x
MY_VARIABLE="test"
echo "$MY_VARIABLE"

hostname
users

# FILE_NAME="/not/here"
# ls $FILE_NAME
# echo $FILE_NAME

DEBUG=true

if $DEBUG
then
    echo "Debug mode on"
else
    echo "Debug mode off"
fi

$DEBUG && echo "Debug mode on"
$DEBUG || echo "Debug mode off"

DEBUG="echo"
$DEBUG ls

debug() {
    echo "Executing: $@"
    $@
}

debug ls

PS4='+ $BASH_SOURCE : $LINENO : '
echo $MY_VARIABLE