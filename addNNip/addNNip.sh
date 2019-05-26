#!/bin/bash
file="$HOME/komodo_script_strobFX/iplistADD"
while IFS= read -r line
do
    ip=$( echo $line )
    if [ ${#ip} -gt 1 ]; then
    KMD=$(komodo-cli addnode $ip onetry)
    BEER=$(komodo-cli -ac_name=BEER addnode $ip onetry)
    PIZZA=$(komodo-cli -ac_name=PIZZA addnode $ip onetry)
    TXSCLCC=$(komodo-cli -ac_name=TXSCLCC addnode $ip onetry)
    fi
done <"$file"
