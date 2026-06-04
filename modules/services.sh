#!/bin/bash 

system_health_monitor() {

    while true
    do
        clear

        echo "===== System Health MONITOR ====="
        echo "1. Show Running Services"
        echo "2. Show failed Services"
        echo "3. Inspect Services"
        echo "4. Restart Services"
        echo "5. Service Health Summary"
        echo "6. Back to Main Menu"
        echo "============================"

        read -p "Choose an option: " choice

        case $choice in

            1)
                echo ""
                echo "===== Running Services ====="
                echo "------------------------------------------"

                systemctl list-units --type=service --state=running

                echo ""
                read -p "Press Enter to continue..."
                ;;

            2)
                echo ""
                echo "===== Failed Services ====="
                echo "---------------------------------------"

                systemctl --failed

                echo ""
                read -p "Press Enter to continue..."
                ;;

            3)  
                echo ""
                echo "===== Inspect a Specific Service ====="
                echo "-----------------------------------"
                read -p "Enter service name to inspect: " service_name

                # 1. Ask systemctl if the service is recognized/active
                 # 'inactive' means the service doesn't exist on the system
                  if [ "$(systemctl is-active "$service_name" 2>/dev/null)" == "inactive" ]; then
                  echo "Error: Service '${service_name}' does not exist."
                    else
                        echo ""
                        echo "--- Inspection Report for $service_name ---"
        
              # 2. Grab only the exact lines right from systemctl status
                systemctl status "$service_name" 2>/dev/null | grep -E "Loaded:|Active:|Main PID:|Tasks:|Memory:|CPU:" 
                 fi

                echo ""
                 read -p "Press Enter to continue..."
    ;;
            4)
                echo ""
                echo "=====  ====="
                echo "----------------------------"

                ;;
                
   5)
                echo ""
                echo "=====  ====="
                echo "----------------------------"

                ;;


            6)
                break
                ;;

            *)
                echo ""
                echo "Invalid option!"

                echo ""
                read -p "Press Enter to continue..."
                ;;
        esac

    done
}
