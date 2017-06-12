# Creación de paquete .deb del FirmadorServidor

Esta es una guía para la creación de paquetes (*.deb) para distribuciones Debian

## Prerequisitos para el FirmadorServidor

- [Java](https://www.java.com/es/download/manual.jsp)

```
$ sudo apt-get install openjdk-8-jre
```

- [OpenSSL](https://www.openssl.org/source/)

```
$ sudo apt-get install openssl
```

## Prerequísitos para crear el Instalador

- [Git](https://git-scm.com/)

```
$ sudo apt-get install git-all
```

- [Ruby](https://www.ruby-lang.org/es/)

```
$ sudo apt-get install ruby-dev gcc make
```

- [FPM](https://github.com/jordansissel/fpm)

```
$ gem install fpm
```

# Creando el instalador para Linux Debian

## Bajar el repositorio

```
$ git clone git@gitlab.geo.gob.bo:firmador_estatal/firmador-instaladores.git
```

## Nos ubicamos dentro del instalador Linux

```
$ cd firmador-instaladores/linux/
```

## Creando el *.deb (instalador)
Nota: Cuando ejecuten la siguiente linea les abrirá dos veces un archivo en un editor, solo deben salir del editor

```
$ sudo fpm --epoch 1 -s dir -e -C FirmadorServicio/ -a all -m "Firmador Estatal" --description "Proyecto Libre de Firma Digital" -v 0.0.1 -t deb -n firmador-servicio --post-install FirmadorServicio/DEBIAN/postinstall.sh
```

#### Instalación del paquete

```
$ sudo dpkg -i firmador-servicio_0.0.1_all.deb
```

## Recomendación

Para obtener mayor detalle de la forma de paramétrizar el instalador usando FEM, se puede consultar la wiki del repositorio del proyecto [wiki](https://github.com/jordansissel/fpm/wiki)
