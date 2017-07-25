pid=`ps aux | grep FirmadorServidor | awk '{print $2}'`
nohup kill -9 $pid &
