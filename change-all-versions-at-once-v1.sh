#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "Let us change all instances of version number everywhere."

echo "What is the old version? e.g.   v21.12.01    (including v and dots)"
read oldversion

echo "To what version do you want upgrade e.g.    v21.12.02   (including v and dots)"

read newversion

echo "We will change all old instances i.e. "$oldversion" to this version: "$newversion
echo "Is this correct?  (y/n) "
read response

if [[ "$response" == [yY] ]]; then

	sed -i 's/'$oldversion'/'$newversion'/g' installation-scripts/30-build-the-iso-the-first-time.sh
    sed -i 's/'$oldversion'/'$newversion'/g' installation-scripts/40-build-the-iso-local-again.sh
    sed -i 's/'$oldversion'/'$newversion'/g' archiso/profiledef.sh
	sed -i 's/'$oldversion'/'$newversion'/g' archiso/airootfs/etc/dev-rel

	echo "#############################################################################################"
	echo "###################                 Script finished                      ####################"
	echo "#############################################################################################"

    else
   	echo "#############################################################################################"
    echo "Nothing has been changed."
fi
