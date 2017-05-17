# Creacion de un Servicio Windows con un archivo JAR Java

Esta es una guia para la creación de un servicio Windows Java (*.jar) para 32-64 bits

## Prerequisitos

- Archivo *.jar cuyo main inicia un servicio
- [NSSM](http://nssm.cc/download) Para Instalar como servicio Windows 32 - 64 bits (necesitamos el archivo nssm.exe en la raiz del proyecto)
- [InnoSetup](https://inno-setup.uptodown.com/windows) Para empaquetar los archivos y generar el instalador (Manejo Gráfico)

## Descripción

Esta guia contempla la creación de un servicio Windows Java (*.jar)

- La aplicación que se esta empaquetando es un servicio en segundo plano en formato .jar (puede ser cualquier programa ejecutable)


## Creación del paquete

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

#### Creación del run.bat
Crear un archivo run.bat con el siguiente contenido

```
java -jar C:\firmadorService\FirmadorServidor.jar "config/config.cfg"
```

Con este comando levantamos el servicio de nuestro servicio REST del FirmadorServidor.jar

#### Instalación del servicio

Nos ubicamos dentro de la carpeta por CMD y ejecutamos el siguiente comando:

```
nssm install FirmadorService C:\firmadorService\run.bat
```

Esto nos instalar el servicio FirmadorService en windows

#### Opciones del Servicio

```
nssm start FirmadorService

nssm stop FirmadorService

nssm restart FirmadorService

nssm status FirmadorService

nssm rotate FirmadorService
```

Tambien desde cmd ejecutando "services.msc" nos llevara al panel de servicios de windows

Buscando en la lista de servicios, nuestro servicio, podemos ejecutar las opciones (iniciar, detener, reiniciar).