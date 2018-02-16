#!/bin/sh
echo "Install prerequisites for flashing USB Rubber Ducky firmware"
#Install dfu-programmer
brew install dfu-programmer
#Get Firmware for Rubber Ducky
wget https://raw.githubusercontent.com/hak5darren/USB-Rubber-Ducky/v2.6.3/Firmware/Images/duck_v2.1.hex
wget https://raw.githubusercontent.com/hak5darren/USB-Rubber-Ducky/master/Firmware/Images/osx.hex
