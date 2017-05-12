  
## Creacion de paquete .deb del FirmadorServidor

Esta es una guia para la creación de paquetes (*.deb) para distribuciones debian

## Prerequisitos

- [Git](https://git-scm.com/)
- [Ruby](https://www.ruby-lang.org/es/) apt-get install ruby-dev gcc make
- [FPM](https://github.com/jordansissel/fpm) gem install fpm

## Descripción

Esta guia contempla la creación de un paquete .deb, el ejemplo contempla las siguientes partes:

- La aplicación que se esta empaquetando es un servicio en segundo plano en formato .jar (puede ser cualquier programa ejecutable)


## Creacion del paquete

#### Creación del arbol de directorios
Se debe tener una carpeta que contendra la estructura de directorios, en este caso la carpeta tiene el nombre "FirmadorServicio", se debe considerar a esta carpeta como la raiz de nuestro sistema de archivos "/" y debemos replicar la estructura de carpetas que se copiaran al momento de la instalación.

La estructura utilizada en el proyecto es la siguiente:

```
FirmadorServicio    
│
+───DEBIAN                              
│       postinstall.sh                   //shell de acciones posteriores a la instalacion
│   
+───etc                                 
│   │   
│   +───init.d
│           adsib-lector-huellas        //archivo que configura los estados del servicio(start, stop, restart)
│   
+───usr
    │   
    +───bin
        │   
        +───config
        │       config.cfg             //archivo que contiene la url al driver del token
        │   
        FirmadorServidor.jar           //jar que contiene los servicios REST
```

#### Creación del paquete
Para la creación del paquete se uso [FPM](https://github.com/jordansissel/fpm) que nos permite crear de manera sencilla los paquetes deseados, ejemplo:

```
sudo fpm --epoch 1 -s dir -e -C FirmadorServicio/ -a all -m "Firmador Estatal" --description "Proyecto Libre de Firma Digital" -v 0.0.1 -t deb -n firmador-servicio --post-install FirmadorServicio/DEBIAN/postinstall.sh
```

Para obtener mayor detalle de la forma de parametrizar se peude consultar la wiki del repositorio del proyecto [wiki](https://github.com/jordansissel/fpm/wiki)

#### Instalación del paquete

```
sudo dpkg -i firmador-servicio_0.0.1_all.deb
```

#### Ejecución del Servicio

```
sudo /etc/init.d/firmador-servicio start

sudo /etc/init.d/firmador-servicio stop

sudo /etc/init.d/firmador-servicio restart
```