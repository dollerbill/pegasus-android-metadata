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
BLINK='\x1b[5m'


snesMode="CLASSIC"
snesConfigured="false"
FILE=~/dragoonDoriseTools/.snes87
if [ -f "$FILE" ]; then
	snesMode="INTERNAL"
	snesConfigured="true"
fi
FILE=~/dragoonDoriseTools/.snes43
if [ -f "$FILE" ]; then
	snesMode="CLASSIC"
	snesConfigured="true"
fi

while true; do
	snesMode=$(whiptail --title "Please choose your Super Nintendo Aspect Ratio" \
   --radiolist "Move using your DPAD and select your platforms with the Y button. Press the A button to select." 10 80 4 \
	"CLASSIC" "4:3 Aspect Ratio (Classic TV Resolution)" ON \
	"INTERNAL" "8:7 Aspect Ratio (Real internal Resolution)" OFF \
   3>&1 1<&2 2>&3)
	case $snesMode in
		[CLASSIC]* ) break;;
		[INTERNAL]* ) break;;
		* ) echo "Please choose";;
	esac
   
 done

if [[ $snesMode == "CLASSIC" ]]; then
	rm ~/dragoonDoriseTools/.snes43 &>> ~/storage/shared/pegasus_installer_log.log
	rm ~/dragoonDoriseTools/.snes87 &>> ~/storage/shared/pegasus_installer_log.log
	touch ~/dragoonDoriseTools/.snes43 &>> ~/storage/shared/pegasus_installer_log.log
cp -r ~/dragoonDoriseTools/pegasus-android-metadata/internal/common/RetroArch/config/Snes9x/snes.cfg ~/storage/shared/RetroArch/config/Snes9x/snes.cfg &> ~/storage/shared/pegasus_installer_log.log	
	
else
	rm ~/dragoonDoriseTools/.snes43 &>> ~/storage/shared/pegasus_installer_log.log
	rm ~/dragoonDoriseTools/.snes87 &>> ~/storage/shared/pegasus_installer_log.log
	touch ~/dragoonDoriseTools/.snes87 &>> ~/storage/shared/pegasus_installer_log.log
	cp -r ~/dragoonDoriseTools/pegasus-android-metadata/internal/common/RetroArch/config/Snes9x/snes87.cfg ~/storage/shared/RetroArch/config/Snes9x/snes.cfg &> ~/storage/shared/pegasus_installer_log.log	
fi



echo ""
echo -ne  "Snes configuration..."
echo -e  "${GREEN}OK${NONE}"
