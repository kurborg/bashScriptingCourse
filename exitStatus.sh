#!/bin/bash

ls /not/here
echo "Return Status Code: $?" # echos the output of last command
# if not 0 then error status code.. could be 0..255

HOST="google.com"
ping -c 1 $HOST
RETURN_CODE=$?

if [ "$RETURN_CODE" -ne "0" ]
then
    echo "$HOST unreachable"
    exit 1 #return 1 so if this is called by another program you can return 1 or another customizable status
fi

#can use a && to say if it's pingable then also executes
ping -c 1 $HOST && echo "$HOST reachable again"