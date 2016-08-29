#!/bin/bash

#	Author     : Matthew Curry
#	Contact    : MattCurry.com
#       Date       : 08/14/2016
#	Script Name: install-RPI-Dependencies.sh
#	Description: Installs the included dependencies
#
clear
echo ""
echo " Installing Packages - Debian Only "
echo ""
sleep 1
sudo apt-get -y install libmad0 &&
sudo apt-get -y install libmad0-dev &&
sudo dpkg -i install *.deb &&
echo " Packages Installed..."
sleep 1
clear
echo ""
echo " Compiling Phonetisaurus... "
tar -zxvf phonetisaurus.tgz &&
cd g014b2b/ &&
sudo ./compile-fst.sh &&
cd
echo "Install Complete"
