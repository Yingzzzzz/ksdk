mkdir web_monitor_log
cd web_monitor_log
touch Web_log.csv  #Final output

wget https://raw.githubusercontent.com/Yingzzzzz/jhg/main/main.bash

./main.bash

#duplicate
awk -F '|' '!x[$1]++' WebLog.csv > Web_Log.csv
#output
sed -i 's/\s\+/,/g' Web_Log.csv
awk -F '|' '!x[$1]++' Web_Log.csv



