----------------------------------------------------------------------------------------------------------------------------------
Git

Ruby apt-get install ruby-dev gcc make

FPM gem install fpm
----------------------------------------------------------------------------------------------------------------------------------
**********************************************************************************************************************************
ejemplo    
│
+───DEBIAN                              
│       postinstall.sh                   //shell de acciones posteriores a la instalacion
│   
+───etc                                 
│   │   
│   +───init.d
│           firmador-servicio        //archivo que configura los estados del servicio(start, stop, restart)
│   
+───usr
    │   
    +───bin
	  │   
          +───firmadorservicio
			     │   
          		     +───config			//carpeta que contiene el config.cfg           		
                             │        config.cfg        //archivo de configuracion del token
           		     FirmadorServidor.jar       //jar que contiene los servicios REST

**********************************************************************************************************************************

cd ../FirmadorServicio

//EJECUTAR PARA GENERAR EL DEB

sudo fpm --epoch 1 -s dir -e -C FirmadorServicio/ -a all -m "Firmador Estatal" --description "Proyecto Libre de Firma Digital" -v 0.0.1 -t deb -n firmador-servicio --post-install FirmadorServicio/DEBIAN/postinstall.sh


----------------------------------------------------------------------------------------------------------------------------------

sudo dpkg -i firmador-servicio_0.0.1_all.deb


//para controlar el servicio

sudo /etc/init.d/firmador-servicio start

sudo /etc/init.d/firmador-servicio stop

sudo /etc/init.d/firmador-servicio restart
