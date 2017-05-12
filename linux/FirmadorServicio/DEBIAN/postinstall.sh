echo "Iniciando servicio en segundo plano ....."
sudo firmador-servicio start
echo "Configurando servicio para iniciar automaticamente ....."
sudo update-rc.d firmador-servicio defaults
echo "FINALIZADO"
