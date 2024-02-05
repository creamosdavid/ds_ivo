#!/bin/bash

echo "Iniciando instalación de dependencias..."

echo "Instalando librerías..."

sleep 2

sudo apt-get update
sudo apt full-upgrade
sudo apt-get install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox xserver-xorg-legacy
sudo apt-get install --no-install-recommends chromium-browser

if [[ -n "$url" ]]; then
    url_kiosko=$url
else
    url_kiosko='https://control.ivo.com.co/totem/NIDEO'
fi

echo > /etc/xdg/openbox/autostart
tee -a /etc/xdg/openbox/autostart <<EOF
# Deshabilitar protector de pantalla y gestión de energía
xset s off
xset s noblank
xset -dpms

# Presionando las teclas CTRL-ATL-Backspace puede finalizar el servicio
setxkbmap -option terminate:ctrl_alt_bksp

# Iniciar chrome en modo kiosko con la URL indicada
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' ~/.config/chromium/'Local State'
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/; s/"exit_type":"[^"]\+"/"exit_type":"Normal"/' ~/.config/chromium/Default/Preferences
chromium-browser --disable-infobars --kiosk '$url_kiosko'
EOF

wget https://raw.githubusercontent.com/davidivab/ds_ivo/main/.bash_profile
source ~/.bash_profile

echo "Finalizando configuración y reiniciando sistema..."

sleep 2

sudo reboot

exit 0;
