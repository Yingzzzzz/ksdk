#mkdir web_monitor_log
#cd web_monitor_log
#touch Web_log.csv  #Final output

#Time
time=$(date "+%Y-%m-%d %H:%M:%S")
echo "${time}" >>WebLog.csv
#Monitor command

nethogs -t  >> WebLog.csv 

#duplicate
#awk -F '|' '!x[$1]++' WebLog.csv > Web_Log.csv
#output
#sed -i 's/\s\+/,/g' Web_Log.csv
#awk -F '|' '!x[$1]++' Web_Log.csv

