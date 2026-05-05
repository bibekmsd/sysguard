#!/bin/bash 

process_monitor(){
	  echo "===== PROCESS MONITOR ====="
    echo "Sorted acc to memory utilization"

    ps aux --sort=-%mem | head 
}

