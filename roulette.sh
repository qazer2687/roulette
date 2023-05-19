#!/bin/bash

while true; do
    pid=$(( RANDOM % 100000 + 1 ))

    if ps -p $pid > /dev/null; then
        echo "|INFO| PID: $pid found. Sending signal..."
        kill $pid
        echo "|INFO| Killed PID $pid."
    else
        echo "|INFO| PID $pid not found."
    fi

    read -p "|INFO| Press Enter to roll again or type 'exit' to quit: " choice

    if [[ $choice == "exit" ]]; then
        break
    fi
done
