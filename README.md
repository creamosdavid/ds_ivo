<p align="center"><a href="https://ivo.com.co" target="_blank">IVO Digital Signage</a></p>

## Acerca de IVO

IVO (digital signage) es un paso a paso que permite configurar una raspberry para que funcione como cartelera digital con chromiun web browser, las librerías descargadas habilitan el raspberry para mostrar un navegador web en pantalla completa.

El archivo de instalación debe ejecutarse con sudo en raspbian.

- Ir al directorio raíz ~/
- Descargar archivo de instalación
- Otrogar permisos y ejecutar archivo .sh
- Configurar la URL que el navegador va a reproducir, por defecto el sistema muestra una de la plataforma IVO  

## Consideraciones

Este conjunto de pasos ha sido probado únicamente con Raspberry PI, en sus modelos 2, 3 y 4 usando la misma línea de comandos.  

Instalar Raspberry OS en una micro SD que posteriormente vincularas a tu raspberry, para ello existen varios métodos pero básicamente estás transmitiendo una imagen a un volumen.

- **[Raspberry OS, oficial](https://www.raspberrypi.com/software/)**  

En la configuración inicial debes tener en cuenta:  
1. Configurar una red WiFi para que el RPI pueda conectarse sin necesidad de cable.  
2. Permitir conexiones tipo SSH, de está forma podrás acceder remotamente a tu RPI.  
3. Buscar la dirección IP local del dispositivo, desde un terminal remoto puede usar el comando "arp -a" en terminal para listar todos los equipos en tu red o en el mismo RPI ejecutar el comando "ifconfig".  
4. Conectarse mediante SSH desde terminal "ssh pi@190.160.0.20", *pi* es el nombre de usuario que se configura por defecto en la creación del volumen desde la imagen, y la IP es la que hayas encontrado con el paso anterior.  
5. Ya estás listo para ejecutar el paso a paso objeto de éste artículo. :bowtie:  

## Instalación

El primer paso consiste en habilitar inicio de sesión automático, para lograrlo debes ingresar a la configuración del sistema y habilitar console autologin.  

`sudo raspi-config`  
System options  
Boot Autologin  
Console Autologin  
Aceptar, finalizar y reiniciar sistema para que tome los cambios  

Luego descargas el archivo con el comando wget dentro de la carpeta raíz del rpi y sigues los pasos de instalación:

`wget https://raw.githubusercontent.com/davidivab/ds_ivo/main/install.sh`  
`chmod +x install.sh`  
`sudo ./install.sh`  

El sistema se reiniciará y en la siguiente carga abrirá el navegador en modo kioso con la URL suministrada.

## Configuración

La URL por defecto se encuentra almacenada en el archivo install.sh sin embargo se puede modificar añadiendo la variable antes de ejecutar el script de bash, de la siguiente forma:  

`sudo url=https://github.com ./install.sh`  

De esta forma enviar la variable "$url" al archivo y actualizamos la que se encuentra preconfigurada.

### Enlaces

- **[IVO](https://www.ivo.com.co/)**
- **[Iyata](https://www.iyata.net/)**

## Licencia

IVO_DS_RPI es un paso a paso ejecutado con librerías de código abierto y licenciado bajo [MIT](https://opensource.org/licenses/MIT).
