# Creación de un Servicio Windows con un archivo JAR Java

Esta es una guía para la creación de un servicio Windows 32-64 bits Java (*.jar)

## Descripción

- La aplicación que se esta empaquetando es un servicio en segundo plano en formato .jar (puede ser cualquier programa ejecutable)

#### Creación del arbol de directorios

Se debe tener una carpeta que contendra la estructura de directorios, en este caso la carpeta tiene el nombre "FirmadorServicio", se debe considerar a esta carpeta como la raiz de nuestro sistema de archivos "C:/FirmadorServicio" y debemos replicar la estructura de carpetas que se copiaran al momento de la instalación.

La estructura utilizada en el proyecto es la siguiente:

```
C:\FirmadorServicio    
     │
     +───config                              
     │       config.cfg                   //archivo de configuracion de la url del token
     │   
     +───FirmadorServidor.jar       
     │   
     +───nssm.exe                        //ejecutable que instala nuestro servicio usando a run.bat
     │    
     +───run.bat                         //ejecutable que iniciar el ServidorFirmador.jar

```

#### Para Instalar el Servicio

Para instalar FirmadorServidor como un servicio de Windows 32-64 bits, leer el manual de instalación [install.md](https://gitlab.geo.gob.bo/firmador_estatal/firmador-instaladores/blob/master/windows/install.md)
