#!/usr/bin/env bash

GRN='\033[0;32m'
RED='\033[0;31m'
CLR='\033[0m'
BLU='\033[0;34m'

while true; do
    pid=$(( RANDOM % 5000 + 1 ))

    if ps -p $pid > /dev/null; then
        printf "${RED}●${NC} PID: $pid found. Killing.\n"
        kill $pid
        printf "${RED}●${NC} Killed PID $pid.\n"
    else
        printf "${GRN}●${NC} PID: $pid not found. You are safe.\n"
    fi
	
    printf "${BLU}●${NC} Press Enter to roll again or type 'exit' to quit: "
    read choice
    if [[ $choice == "exit" ]]; then
        break
    fi
done
