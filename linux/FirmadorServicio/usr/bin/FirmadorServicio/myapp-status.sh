pid=`ps aux | grep FirmadorServidor | awk '{print $2}'`
if [ ! -f $pid ]; then
  echo "el servicio esta iniciado ..."
else
  echo "el servicio esta detenido ..."
fi
