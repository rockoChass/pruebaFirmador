# Creación de un servicio para Windows del FirmadorServidor

Esta es una guía para la creación de un Servicio Windows 32-64 bits del FirmadorServidor (*.exe)

## Prerequísitos del FirmadorServidor

- [JRE-Java](https://www.java.com/es/download/manual.jsp)
- [OpenSSL](https://www.openssl.org/source/)


## Prerequísitos del FirmadorServidor

- [Git](https://git-scm.com/)
- [NSSM](http://nssm.cc/download) Para Instalar como servicio Windows 32 - 64 bits (necesitamos el archivo nssm.exe en la raiz del proyecto)
- [InnoSetup](https://inno-setup.uptodown.com/windows) Para empaquetar los archivos y generar el instalador (Manejo Gráfico)

# Creando el servicio para Windows

## Bajar el repositorio, desde CMD

```
> git clone git@gitlab.geo.gob.bo:firmador_estatal/firmador-instaladores.git
```

## Nos ubicamos dentro del instalador Windows

```
> cd firmador-instaladores/windows/
```

## Copiamos la carpeta FirmadorServicio a la raiz c:/

```
> cp windows/ c:/
```
## Nos ubicamos dentro del instalador Windows

```
> cd c:/FirmadorServicio/
```

## Instalación del servicio

```
nssm install FirmadorService C:\firmadorService\run.bat
```

## Recomendación

Con esto ya tenemos instalado el servicio para Iniciarlo leer el [readme.md](https://gitlab.geo.gob.bo/firmador_estatal/firmador-instaladores/blob/master/windows/readme.md)
