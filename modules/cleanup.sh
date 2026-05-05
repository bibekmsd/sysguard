#!/bin/bash

system_cleanup(){
	   echo "===== CLEANUP ====="
	   read -p  "Find unused temp files for n days(leave blank for all time) :" N


     N_DAYS=${N:-0}
echo "Targeting files older than $N_DAYS days..."
    find /tmp -type f -atime +$N_DAYS -print

   
  read -p "Confirm deletion? (y/n): " confirm
if [[ $confirm == [yy]* ]] ;then
	find /tmp -type f -atime +$N_DAYS -delete
    echo "Files deleted."
else
	echo "Cleanup Cancelled"
fi
}

