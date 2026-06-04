#!/bin/bash
trap 'echo -e "\nExiting SysGuard..."; exit 0' SIGINT SIGTERM
source modules/disk.sh
source modules/process.sh
source modules/network.sh
source modules/cleanup.sh
source modules/security.sh
source modules/services.sh

while true 
do
	clear
    echo "=============================="
    echo "SYSGUARD TOOLKIT"
    echo "=============================="
    echo "1. Disk Usage Analyzer"
    echo "2. Process Monitor"
    echo "3. Network Connections"
    echo "4. Cleanup Junk Files"
    echo "5. Security Audit"
      echo "6. Service Health Monitor"
    echo "7. Exit"
    echo "=============================="

    read -p "Choose an option:" choice

    case $choice in
	    1) 
		    disk_usage
		    ;;

		       2)
            process_monitor
            ;;
        3)
            network_connections
            ;;
        4)
            system_cleanup
            ;;
        5)
            security_audit
            ;;

            6)system_health_monitor
            ;;

        7)

		echo "Goodbye!"
		exit 
		;;

	*) 
		echo "Invalid choice"
		;;

esac
echo ""
read -p "Press enter to continue..."
done

