usando JSMooth-0.9.9-7 y Innosetup-5.5.9

logre instalar para windows 7 y 8 mas en windows 10 no es compatible como servicio demonio ni como aplicacion de escritorio



tambien usando este metodo se puede incrustar el JRE en el instalador, cuestion de que no es necesario tener instalado en la maquina java.


referencia: https://www.youtube.com/watch?v=Z_yySLN9068

*.jsmooth -> archivo de configuració Jsmooth	(para crear el instalador del .exe)
*.iss 	-> archivo de configuración InnoSetup  	(para transformar el jar en .exe {escritorio, servicio})

NOTA: en el archivo *.iss hay que modificar el directorio considerando la url de la ubicacion de los archivos a cargarse

Para instalar como servicio se ejecuta el archivo installServicio.cmd
Para desinstalar el servicio se ejecuta uninstallServicio.cmd