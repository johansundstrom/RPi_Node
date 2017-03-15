#!/bin/sh 
#Johan Sundström
#2017-01-28 18.00

#gets Raspian updates 
sudo apt-get update -y 
 
#installs Raspian updates
sudo apt-get upgrade -y 

#install vncserver
sudo apt install -y tightvncserver

#install x remote desktop
sudo apt install -y xrdp

#install samba
sudo apt install -y samba

#copy original smb.conf file for security reasons
sudo cp /etc/samba/smb.conf /etc/samba/smb.orginal

sudo cat 
#ewrite  samba share
sudo echo '[PiShare]' >> /etc/samba/smb.conf
sudo echo ' comment=Raspi Share' >> /etc/samba/smb.conf
sudo echo ' path=/home/pi' >> /etc/samba/smb.conf
sudo echo ' browseable=Yes' >> /etc/samba/smb.conf
sudo echo ' writeable=Yes' >> /etc/samba/smb.conf
sudo echo ' only guest=No' >> /etc/samba/smb.conf
sudo echo ' create mask=0740' >> /etc/samba/smb.conf
sudo echo ' directory mask=0750' >> /etc/samba/smb.conf
sudo echo ' public=no' >> /etc/samba/smb.conf
 
#create samba usr
sudo smbpasswd -a pi

#create folder 'proj' in home folder 
mkdir /home/pi/proj 

#set RW on folder
chmod 777 /home/pi/proj -R 

echo "installation ok, the system will restart" | sudo tee -a /boot/config.txt 

sudo reboot 
