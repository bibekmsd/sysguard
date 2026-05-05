#!/bin/bash 

process_monitor() {

    while true
    do
        clear

        echo "===== PROCESS MONITOR ====="
        echo "1. Top Memory Consuming Processes"
        echo "2. Top CPU Consuming Processes"
        echo "3. Hung Processes (D State)"
        echo "4. Zombie Processes"
        echo "5. Back to Main Menu"
        echo "============================"

        read -p "Choose an option: " choice

        case $choice in

            1)
                echo ""
                echo "===== TOP MEMORY CONSUMING PROCESSES ====="
                echo "------------------------------------------"

                ps aux --sort=-%mem | head

                echo ""
                read -p "Press Enter to continue..."
                ;;

            2)
                echo ""
                echo "===== TOP CPU CONSUMING PROCESSES ====="
                echo "---------------------------------------"

                ps aux --sort=-%cpu | head

                echo ""
                read -p "Press Enter to continue..."
                ;;

            3)
                echo ""
                echo "===== HUNG PROCESSES (D STATE) ====="
                echo "-----------------------------------"

                HUNG=$(ps -eo pid,ppid,cmd,%mem,%cpu,state | awk '$6=="D"')

                if [ -z "$HUNG" ]
                then
                    echo "No hung processes found."
                else
                    echo "$HUNG"
                fi

                echo ""
                read -p "Press Enter to continue..."
                ;;

            4)
                echo ""
                echo "===== ZOMBIE PROCESSES ====="
                echo "----------------------------"

                ZOMBIE=$(ps -eo pid,ppid,cmd,state | awk '$4=="Z"')

                if [ -z "$ZOMBIE" ]
                then
                    echo "No zombie processes found."
                else
                    echo "$ZOMBIE"
                fi

                echo ""
                read -p "Press Enter to continue..."
                ;;

            5)
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
