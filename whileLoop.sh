#!/bin/bash

while [ "$CORRECT" != "y" ]
do
    read -p "Enter your name: " NAME
    read -p "Is $NAME correct? " CORRECT
done

# Send 1 packet to app1 and route output to /dev/null
# If return status code 0 exit loop else return 1 go into loop
while ping -c 1 app1 >/dev/null
do
    echo "app1 still up..."
    sleep 5
done

echo "app1 is down."

LINE_NUM=1
while read LINE
do
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
done < /etc/fstab

while true
do
    read -p "1. Show Disk Usage. 2. Show Uptime. " CHOICE
    case "$CHOICE" in 
    1)
        df -h
        ;;
    2)
        uptime 
        ;;
    *)
        break
        ;;
    esac
done