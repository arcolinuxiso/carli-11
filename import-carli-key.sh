#!/bin/bash
#set -e
##################################################################################################################
# Author 	: 	Erik Dubois
# Website 	: 	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "Run the alias 'fix-pacman-keyserver'"
echo "in a terminal first to have the correct"
echo "keyservers in our /etc/pacman.d/gnupg/gpg.conf"

sleep 5

echo "get the carli key in"
sudo pacman-key --recv-keys 7B01FA17CA801345

echo "Lsign the keys"
sudo pacman-key --lsign-key 7B01FA17CA801345

echo "If there are keyserver issues..."
echo "Download the keys from the github server"
echo "and install them with sudo pacman -U ..."
echo "https://github.com/arcolinuxiso/carli_repo/tree/master/x86_64 "
echo "Download the keyring package"

echo "################################################################"
echo "###################        Done           ######################"
echo "################################################################"
