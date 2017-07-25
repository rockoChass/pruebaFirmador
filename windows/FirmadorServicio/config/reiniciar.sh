echo "$SERVICE_NAME Deteniendo ..."
sudo sh /usr/bin/FirmadorServicio/config/myapp-stop.sh
echo "$SERVICE_NAME Detenido ..."
echo "Iniciando $SERVICE_NAME ..."
sudo sh /usr/bin/FirmadorServicio/config/myapp-start.sh
echo "$SERVICE_NAME Iniciado ..."
