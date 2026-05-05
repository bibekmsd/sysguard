#!/bin/bash

system_cleanup(){
    echo "===== CLEANUP ====="
    read -p "Find unused temp files for n days (leave blank for all time): " N

    N_DAYS=${N:-0}
    echo "Targeting files older than $N_DAYS days..."
   
   sudo find /tmp -type f -atime +$N_DAYS 2>/dev/null -print
   
    read -p "Confirm deletion? (y/n): " confirm
    if [[ $confirm == [yY]* ]]; then
       sudo find /tmp -type f -mtime +$N_DAYS 2>/dev/null -delete
        echo "Files deleted."
    else
        echo "Cleanup Cancelled"
    fi
}
