#!/usr/bin/Bash

logDirectory="/var/log/auth.log"
numbConection="number_connection-$dateNow"
dateNow=$(date +"%d-%m-%Y--%H:%M")


grep "session oppened for user aaron" $logDirectory | wc -l > /home/aaron/shell-exe/Job08/number_connection-$dateNow

tar -cf /home/aaron/shell-exe/Job08/number_connection-$dateNow.tar $numbConection

mv /home/aaron/shell-exe/Job08/number_connection-$dateNow.tar /home/aaron/shell-exe/Job08/Backups/

rm /home/aaron/shell-exe/Job08/number_connection-$dateNow   