#!/bin/sh
NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'

rm -rf ~/dragoonDoriseTools

#Restoring Pegasus
cp ~/storage/shared/pegasus-frontend/settings.txt.bak ~/storage/shared/pegasus-frontend/settings.txt
cp ~/storage/shared/pegasus-frontend/game_dirs.txt.bak ~/storage/shared/pegasus-frontend/settings.txt

#Restoring Pegasus
rm -f scrap.sh
rm -f update.sh
rm -f undo.sh

rm -f ~/dragoonDoriseTools/pegasus-fe_alpha15-85-gfff1a5b2_android.apk

#Restoring Retroarch
FILE=~/storage/shared/RetroArch/config_bak
if [ -f "$FILE" ]; then
	rm -rf ~/storage/shared/RetroArch/config/
	cp ~/storage/shared/RetroArch/config_bak/ ~/storage/shared/RetroArch/config/
	rm ~/storage/shared/RetroArch/config_bak/
fi

clear

echo "${GREEN}All cleaned up!${NONE}"
echo "We Hope to see you come back soon!"
echo "NOTE: Termux and Pegasus have to be uninstalled like any other Android app. Pegasus themes are not deleted either"

exit