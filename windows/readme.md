# Creación de Instalador Windows 32_64 bits

Esta es una guía para crear un instalador (.exe) del FirmadorServidor

## Prerequisitos en Windows

- Instalar git
- Intalar MinGW 
- Instalar go
- Instalar InnoSetup

## Descripción

Esta guia contempla la creación de un ejecutable .exe, el cual al ejecutarse mostrara un TrayIcon (icono con menu):

- La aplicación que se esta empaquetando es un servicio en segundo plano en formato .jar (puede ser cualquier programa ejecutable) 
- Todos los archivo necesarios para ser instalado sera empaquetado usando la aplicacion InnoSetup

## Creación del .exe

#### Creación del arbol de directorios

#### Instalación del paquete