#!/bin/sh

GAME_SETUP=$PWD
CDROM_FILE="data1.cab"
DISC="Disc 1"

if [ -e $SETUP_CDROMPATH/$CDROM_FILE ]
then
	echo
  	echo "Extracting files from $DISC"
  	echo
	$GAME_SETUP/setup.data/unshield -d $GAME_SETUP/data x $SETUP_CDROMPATH/$CDROM_FILE > /dev/null
	
else
  	echo
  	echo "ERROR - can't extract files from $DISC"
  	echo
  	exit 1
fi
