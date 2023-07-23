#!/bin/bash

while read -r ip; do
    ping -c 1 $ip 

    # if [ $? -eq 0 ]; then
    #     echo $ip is up
    # else
    #     echo $ip is down
    # fi
done <<< "$(cat ServerLinux.txt)"