<!-- <p align="center"><a href="https://iyata.net" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p> -->

<p align="center"><a href="https://iyata.net" target="_blank">IVO Digital Signage</a></p>

## Acerca de IVO

IVO ds es un paso a paso que permite instalar de forma rápida y segura las librerías de Chromiun en 
una Raspberry para que se ejecute el sistema en una pantalla de inicio a modo de kioso, como una carlera digita.

El archivo de instalación debe ejecutarse con sudo en raspbian.

- Ir al directorio raíz ~/
- Descargar archivo de instalación
- Otrogar permisos y ejecutar archivo .sh
- Configurar la URL que el navegador va a reproducir, por defecto el sistema muestra una de la plataforma IVO

## Instalación

Con el comando wget dentro de la carpeta raíz del rpi descargar el archivo de instalación anes de ejecutar:

wget https://raw.githubusercontent.com/creamosdavid/ds_ivo/main/install.sh
chmod +x install.sh
sudo ./install.sh

El sistema se reiniciará y en la siguiente carga abrirá el navegador en modo kioso con la URL suministrada.

## Configuración

La URL por defecto se encuentra almacenada en el archivo install.sh sin embargo se puede modificar aádiendo la variable antes de ejecutar el script de bash, de la siguiente forma:

sudo url=https://google.com ./install.sh

De esta forma quedarà configurando en el navegador la URL suministrada como predeterminada.

### Enlaces

- **[IVO](https://www.ivo.com.co/)**
- **[Iyata](https://www.iyata.net/)**

## Licencia

IVO de desarrollado con librerías de código abierto y licenciado bajo [MIT](https://opensource.org/licenses/MIT).
