# Raspberry Pi RESTful API med GPIO
Projektet använder Raspberry Pi och testar RESTful API med NODE och Express. Filen ```server.js``` initialiserar och läser RPi's GPIO. GPIO-status tillgängliggörs genom RESTful API via Express middleware. ```Index.html``` nås via http://localhost:3000 (standardport) som tillsammans med ```client.js``` läser och visar status på respektive http://localhost:3000/index.html/input/pin#

## Setup för Raspberry Pi

### Filer
* server.js (Server side NODE)
* index.html (Webbfil)
* client.js (Client side JavaScript)
* style.css (stil)

### GPIO
* Använder pin 16 (GPIO 23) som input
* Använder pin 22 (GPIO 25) som input

![GPIO](images/GPIO2.png)
[eLinux.org](http://elinux.org/RPi_Low-level_peripherals)

## Installera
Skapa generell projektyta i filsystemet på lämplig plats (exempelvis '~/proj') genom ```mkdir proj``` och ```cd Proj```. På Raspberry Pi i terminalfönstret...
```javascript
git clone https://github.com/johansundstrom/RPi_Node
```
Gör mappen ```RPi_Node``` till aktuell mapp 
```dos
cd RPi_Node
```
Install Express
```javascript
npm install express
```
Install Pi-GPIO
```javascript
npm install pi-gpio
```

### Starta
```javascript
sudo node server
```
## Problem
mongod --dbpath "C:\Program Files\MongoDB\Data\DB". Onödigt problem med core-uppdatering och ```gpio-admin.c``` löses med [http://stackoverflow.com/questions/36735925/gpio-over-raspberry-pi-3-model-b-using-node-js](http://stackoverflow.com/questions/36735925/gpio-over-raspberry-pi-3-model-b-using-node-js)

## Setup RPi File Share och VNCServer
```bash
sudo apt update && sudo apt full-upgrade
```
```bash
sudo apt install -y tightvncserver
```
```bash
sudo apt install -y xrdp
```
```bash
sudo apt install -y samba
```
Starta Microsoft Remote Desktop
```bash
sudo leafpad /etc/samba/smb.conf &
```
Lägg till följande i slutet på filen smb.conf...
```
[PiShare]
 comment=Raspi Share
 path=/home/pi
 browseable=Yes
 writeable=Yes
 only guest=No
 create mask=0740
 directory mask=0750
 public=no
 ```
```bash
sudo smbpasswd -a pi
```
Montera enhet med ```net use p:  \\raspberrypi\PiShare``` 
## GPIO manipulation
```javascript
sudo echo 17 > /sys/class/gpio/export
sudo echo out > /sys/class/gpio/gpio17/direction
echo 1 > /sys/class/gpio/gpio17/value
echo 0 > /sys/class/gpio/gpio17/value
```
.
