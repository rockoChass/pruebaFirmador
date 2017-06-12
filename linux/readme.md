# Creación del instalador para Linux Debian

## Descripción

Esta guía contempla la creación de un paquete .deb, el ejemplo contempla las siguientes partes:

- La aplicación que se esta empaquetando es un servicio en segundo plano en formato .jar (puede ser cualquier programa ejecutable)


## Creación del paquete

#### Creación del arból de directorios
Se debe tener una carpeta que contendrá la estructura de directorios, en este caso la carpeta tiene el nombre "FirmadorServicio", se debe considerar a esta carpeta como la raíz de nuestro sistema de archivos "/" y debemos replicar la estructura de carpetas que se copiaran al momento de la instalación.

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
│           firmador-servicio           //archivo que configura los estados del servicio(start, stop, restart)
│   
+───usr
    │   
    +───bin
        │   
        +───FirmadorServicio
            │   FirmadorServidor.jar   //jar que contiene los servicios REST
            │   
            +───config
                    config.cfg         //archivo que contiene la url al driver del token

```

#### Opciones del Servicio

```
sudo /etc/init.d/firmador-servicio start

sudo /etc/init.d/firmador-servicio stop

sudo /etc/init.d/firmador-servicio restart
```
