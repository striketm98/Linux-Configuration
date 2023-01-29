#! /bin/bash 
sudo apt-get update -y   
sudo apt-get install lxde -y
sudo apt-get install xrdp -y
sudo adduser xrdp ssl-cert

# for ubuntu gui version 22.04 LTS
echo gnome-session > ~/.xsession
chmod +x ~/.xsession
sudo reboot
