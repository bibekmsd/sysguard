#!/bin/bash
security_audit(){

	PATH_LOG=/var/log

while true 
do
	clear
	 echo "=============================="
    echo "SYSTEM AUDIT "
    echo "=============================="
    echo "1. Recent Successfull Logins"
    echo "2. Recent Failed logins"
    echo "3. Currently active users"
    echo "4. World Writeable files"
    echo "5. Exit"
    echo "=============================="

    read -p "Enter what to audit :" choice

   case $choice in 
	   1)
		   echo "===== SUCCESFUL LOGIN ATTEMPTS ====="

		   # Shows the last 10 successful logins
		  last -n 10
		  ;;

		  2)
		  echo "===== FAILED LOGIN ATTEMPTS ====="
		     # The -a flag ensures we read it even if it looks "binary" -i : ignore case
		    sudo grep -ai "Failed Password" ${PATH_LOG}/auth.log | tail -n 10
		    ;;

		    3)
		    echo "===== CURRENTLY ACTIVE USERS ====="
    echo -e "\n--- Active sessions(who): ---"
        who
    ;;

    4)
     echo "World writable files:"
    find / -type f -perm -o+w 2>/dev/null | head
    ;;

    5)
    echo "Audit exited !"
    exit 
    ;;
*) 
	echo "Invalid choice"
	;;

esac
echo""
read -p "Explore again?(y/n)" option
if [[ $option == [yY]* ]]; then
	
continue 
else
	echo "Exitingg...."
	break  
fi
done

}


