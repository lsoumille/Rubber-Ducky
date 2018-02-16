#!/bin/sh

if [ $1 != "flash" ]
then
    echo "Push the button on Rubber Ducky before pluging it and use ./flash_rubber.sh flash with the firmware file in the current directory"
    exit 1
fi

#Dump current firmware (backup)
sudo /usr/local/bin/dfu-programmer at32uc3b1256 dump >dump.bin
#Erase firmware
sudo /usr/local/bin/dfu-programmer at32uc3b1256 erase
#Let's flashing it
if [ $2 = "osx" ]
then
	sudo /usr/local/bin/dfu-programmer at32uc3b1256 flash --suppress-bootloader-mem osx.hex
else
	sudo /usr/local/bin/dfu-programmer at32uc3b1256 flash --suppress-bootloader-mem duck_v2.1.hex
fi
#Reset to validate the change
sudo /usr/local/bin/dfu-programmer at32uc3b1256 reset
