echo "Iniciando servicio en segundo plano ....."
sudo /etc/init.d/firmador-servicio stop
sudo /etc/init.d/firmador-servicio start
sudo /etc/init.d/firmador-servicio restart
echo "FINALIZADO"
