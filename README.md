# RPi_Node
RESTful API for Raspberry Pi
# Setup för Raspberry Pi

## Filer
* server.js ==> Server side NODE
* index.html ==> Webbfil
* client.js ==> Client side JS
* style.css ==> stil

## GPIO
* Använder pin 11 (gpio 17) som input
* Använder pin 12 (gpio 18) som input

## Setup
Skapa projektmapp (exempelvis 'Proj') genom ```mkdir Proj``` och ```cd Proj```
```javascript
get clone https://github.com/johansundstrom/RPi_Node
```
Setup file package.json
```javascript
npm init
```
Install Express, (--save uppdaterar dependencies i package.json)
```javascript
npm install express --save
```
Install Connect
```javascript
npm install connect --save
```
Install Pi-GPIO)
```javascript
npm install pi-gpio --save
```

## Starta
```javascript
node server.js
```

## Johan Sundström
