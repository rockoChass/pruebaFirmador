pid=`ps aux | grep FirmadorServidor | awk '{print $2}'`
kill -9 $pid
