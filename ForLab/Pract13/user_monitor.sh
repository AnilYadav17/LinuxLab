#!/bin/bash
echo "Enter username to monitor:"
read username

while true; do
    if who | grep -q $username; then
        echo "$username has logged in."
        exit
    else
        sleep 60
    fi
done
