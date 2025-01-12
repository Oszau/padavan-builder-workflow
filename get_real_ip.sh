#!/bin/sh
  
# WAN action should be up
[ ! "x$1" == "xup" ] && exit 0
  
counter=/tmp/wan_reconnect_counter.txt
max_tries=10
  
# Tell our current IP
/etc/storage/tg_say.sh Соединение с интернетом установлено, IP адрес $3.
  
  
if [ "$(echo $3 | cut -d '.' -f 1)" = "100" ]; then
    # Get counter from temp file
    [ -f "$counter" ] || echo '0' > $counter
    try_nr="$(cat $counter)"
  
    # This is our try_nr try
    try_nr=$((try_nr+1))
  
    # Too much tries
    if [ $try_nr -gt $max_tries ]; then
        echo '0' > $counter
        /etc/storage/tg_say.sh П....ц. Белый IP адрес получить не удалось.
        exit
    fi
  
    /etc/storage/tg_say.sh Переподключение к интернету, попытка $try_nr из $max_tries.
    echo "$try_nr" > $counter
    sleep 10
    restart_wan
else
    /etc/storage/tg_say.sh Белый IP адрес, всё в порядке.
    echo '0' > $counter
fi
