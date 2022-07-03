#!/bin/bash

SERVER_NAME=$(hostname)

read -p "Enter Name: " VAR1
read -p "Enter Last Name: " VAR2

echo "Hello, ${VAR1}_${VAR2}"
echo "running on $SERVER_NAME"