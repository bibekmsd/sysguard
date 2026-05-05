#!/bin/bash

disk_usage(){
	    echo "===== DISK USAGE ====="
    echo ""

    df -h 

    echo ""
 
    echo "Largest Directory in $(pwd) is:"
    du -h --max-depth=1 | sort -hr | head

}

    

