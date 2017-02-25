# RPi_Node
Projektet testar RESTful API for Raspberry Pi. Genom att använda NODE.JS och Express.js skapas server.js som initialiserar och läser RPi's GPIO. Dessa tillgängliggörs sedan genom Express REST API. Index.html på localhost:3000 laddar client.js och tar emot värden på http://localhost:3000/index.html/input/pin#

# Setup för Raspberry Pi

## Filer
* server.js (Server side NODE)
* index.html (Webbfil)
* client.js (Client side JavaScript)
* style.css (stil)

## GPIO
* Använder pin 11 (gpio 17) som input
* Använder pin 12 (gpio 18) som input

![GPIO](300px-Pi-GPIO-header.png)
[eLinux.org](http://elinux.org/RPi_Low-level_peripherals)

## Setup
Skapa projektmapp i filsystemet på lämplig plats (exempelvis 'Proj') genom ```mkdir Proj``` och ```cd Proj```. På Raspberry Pi i terminalfönstret...
```javascript
get clone https://github.com/johansundstrom/RPi_Node
```
I windows används git-kommandot efter att GIT är installerat (https://git-scm.com).
```dos
git clone https://github.com/johansundstrom/RPi_Node
```
Följ guiden för att sätta upp filen package.json
```javascript
npm init
```
Install Express, (--save-tillägget uppdaterar dependencies i package.json)
```javascript
npm install express --save
```
Install Pi-GPIO
```javascript
npm install pi-gpio --save
```

## Starta
```javascript
node server.js
```

## Notes to self
mongod --dbpath "C:\Program Files\MongoDB\Data\DB". Onödiga problem med core-uppdatering löses med [http://stackoverflow.com/questions/36735925/gpio-over-raspberry-pi-3-model-b-using-node-js]http://stackoverflow.com/questions/36735925/gpio-over-raspberry-pi-3-model-b-using-node-js
