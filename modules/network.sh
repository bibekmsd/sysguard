#!/bin/bash

network_connections(){
echo "===== PING TEST ====="
# Silent ping — only shows custom message
ping -c 3 -W 2 8.8.8.8 > /dev/null 2>&1 && echo "Internet: OK" || echo "Internet: UNREACHABLE"
 echo "===== ACTIVE CONNECTIONS ====="
 ss -tulnp

  echo ""
    echo "===== NETWORK INTERFACES ====="
    ip -br a


        echo ""
    echo "===== ROUTING TABLE ====="
    ip route show

     echo ""
    echo "===== DNS SERVERS ====="
     cat /etc/resolv.conf | grep nameserver


}

