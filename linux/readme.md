# Creación del instalador para Linux Debian

## Descripción

Esta guía contempla la creación de un paquete .deb, el ejemplo contempla las siguientes partes:

- La aplicación que se esta empaquetando es un servicio en segundo plano en formato .jar (puede ser cualquier programa ejecutable)

#### Creación del arból de directorios
Se debe tener una carpeta que contendrá la estructura de directorios, en este caso la carpeta tiene el nombre "FirmadorServicio", se debe considerar a esta carpeta como la raíz de nuestro sistema de archivos "/" y debemos replicar la estructura de carpetas que se copiaran al momento de la instalación.

La estructura utilizada en el proyecto es la siguiente:

```
FirmadorServicio    
│
+───DEBIAN                              
│       postinstall.sh                   // Shell de acciones posteriores a la instalación
│   
+───etc                                 
│   │   
│   +───init.d
│           firmador-servicio           // Archivo que configura los estados del servicio(start, stop, restart)
│   
+───usr
    │   
    +───bin
        │   
        +───FirmadorServicio
            │   FirmadorServidor.jar   // JAR que contiene los servicios REST
            │   
            +───config
                    config.cfg         // Archivo que contiene la url al driver del token

```

#### Para Instalar el Servicio

Para instalar el servicio leer el manual de instalación [install.md](https://gitlab.geo.gob.bo/firmador_estatal/firmador-instaladores/blob/master/linux/install.md)

#### Opciones del Servicio

```
sudo /etc/init.d/firmador-servicio start

sudo /etc/init.d/firmador-servicio stop

sudo /etc/init.d/firmador-servicio restart
```
