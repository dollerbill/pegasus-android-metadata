#!/bin/sh
#

selected_device_descriptions=$(whiptail --title "Pegasus Rom Scrapper" \
   --checklist "Move using yout DPAD and select your platforms with the Space" 10 80 4 \
	"atari2600" "Atari - 2600" OFF \
	"atarilynx" "Atari - Lynx" OFF \
	"doom" "DOOM" OFF \
	"dos" "DOS" OFF \
	"fbneo" "FBNeo - Arcade Games" OFF \
	"pcengine" "NEC - PC Engine - TurboGrafx 16" OFF \
	"pcenginecd" "NEC - PC Engine CD - TurboGrafx-CD" OFF \
	"gb" "Nintendo - Game Boy" OFF \
	"gba" "Nintendo - Game Boy Advance" OFF \
	"gbc" "Nintendo - Game Boy Color" OFF \
	"gc" "Nintendo - GameCube" OFF \
	"3ds" "Nintendo - Nintendo 3DS" OFF \
	"n64" "Nintendo - Nintendo 64" OFF \
	"nds" "Nintendo - Nintendo DS" OFF \
	"nes" "Nintendo - Nintendo Entertainment System" OFF \
	"pokemini" "Nintendo - Pokemon Mini" OFF \
	"snes" "Nintendo - Super Nintendo Entertainment System" OFF \
	"wii" "Nintendo - Wii" OFF \
	"neogeo" "SNK - Neo Geo" OFF \
	"neogeocd" "SNK - Neo Geo CD" OFF \
	"ngp" "SNK - Neo Geo Pocket" OFF \
	"ngpc" "SNK - Neo Geo Pocket Color" OFF \
	"scummvm" "ScummVM" OFF \
	"sega32x" "Sega - 32X" OFF \
	"dreamcast" "Sega - Dreamcast" OFF \
	"gamegear" "Sega - Game Gear" OFF \
	"mastersystem" "Sega - Master System" OFF \
	"genesis" "Sega - Mega Drive - Genesis" OFF \
	"segacd" "Sega - Mega-CD - Sega CD" OFF \
	"saturn" "Sega - Saturn" OFF \
	"psx" "Sony - PlayStation" OFF \
	"ps2" "Sony - PlayStation 2" OFF \
	"psp" "Sony - PlayStation Portable" OFF \
	"3do" "The 3DO Company - 3DO" OFF \
   3>&1 1<&2 2>&3)

mapfile -t selected_device_names <<< $selected_device_descriptions

for device_name in ${selected_device_names[@]};
 do
	 message=$device_name
	  system="${message//'"'/}"            
	 #ls ~/storage/external-1/$system
	 mkdir ~/storage/external-1/$system/media
	 mkdir ~/storage/external-1/$system/media/screenshot
	 mkdir ~/storage/external-1/$system/media/box2dfront
	 mkdir ~/storage/external-1/$system/media/wheel
	 for entry in ~/storage/external-1/$system/*
	 do
	 
	 #	echo $entry;
		 firstString=$entry
		 secondString=".png"
		 capture="${firstString/.7z/"$secondString"}"   
		 
		 firstString=$capture
		 secondString=""
		 capture="${firstString/"/data/data/com.termux/files/home/storage/external-1/$system/"/"$secondString"}"   
		 
		case $system in
					
			atari2600)
				remoteSystem="Atari - 2600"
				;;
			atarilynx)
				remoteSystem="Atari - Lynx"
				;;
			doom)
				remoteSystem="DOOM"
				;;
			dos)
				remoteSystem="DOS"
				;;
			fbneo)
				remoteSystem="FBNeo - Arcade Games"
				;;
			pcengine)
				remoteSystem="NEC - PC Engine - TurboGrafx 16"
				;;
			pcenginecd)
				remoteSystem="NEC - PC Engine CD - TurboGrafx-CD"
				;;
			gb)
				remoteSystem="Nintendo - Game Boy"
				;;
			gba)
				remoteSystem="Nintendo - Game Boy Advance"
				;;
			gbc)
				remoteSystem="Nintendo - Game Boy Color"
				;;
			gc)
				remoteSystem="Nintendo - GameCube"
				;;
			3ds)
				remoteSystem="Nintendo - Nintendo 3DS"
				;;
			n64)
				remoteSystem="Nintendo - Nintendo 64"
				;;
			nds)
				remoteSystem="Nintendo - Nintendo DS"
				;;
			nes)
				remoteSystem="Nintendo - Nintendo Entertainment System"
				;;
			pokemini)
				remoteSystem="Nintendo - Pokemon Mini"
				;;
			snes)
				remoteSystem="Nintendo - Super Nintendo Entertainment System"
				;;
			wii)
				remoteSystem="Nintendo - Wii"
				;;
			neogeo)
				remoteSystem="SNK - Neo Geo"
				;;
			neogeocd)
				remoteSystem="SNK - Neo Geo CD"
				;;
			ngp)
				remoteSystem="SNK - Neo Geo Pocket"
				;;
			ngpc)
				remoteSystem="SNK - Neo Geo Pocket Color"
				;;
			scummvm)
				remoteSystem="ScummVM"
				;;
			sega32x)
				remoteSystem="Sega - 32X"
				;;
			dreamcast)
				remoteSystem="Sega - Dreamcast"
				;;
			gamegear)
				remoteSystem="Sega - Game Gear"
				;;
			mastersystem)
				remoteSystem="Sega - Master System"
				;;
			genesis)
				remoteSystem="Sega - Mega Drive - Genesis"
				;;
			segacd)
				remoteSystem="Sega - Mega-CD - Sega CD"
				;;
			saturn)
				remoteSystem="Sega - Saturn"
				;;
			psx)
				remoteSystem="Sony - PlayStation"
				;;
			ps2)
				remoteSystem="Sony - PlayStation 2"
				;;
			psp)
				remoteSystem="Sony - PlayStation Portable"
				;;
			3d0)
				remoteSystem="The 3DO Company - 3DO"
				;;
		
		  *)
			echo -n "unknown"
			;;
		esac		 
				
		FILE=~/storage/external-1/$system/media/screenshot/$capture
		if [ -f "$FILE" ]; then
			echo "$FILE exists, ignoring"
		else 
			wget  "http://thumbnails.libretro.com/$remoteSystem/Named_Snaps/$capture" -P ~/storage/external-1/$system/media/screenshot/
		fi
		
		FILE=~/storage/external-1/$system/media/box2dfront/$capture
		if [ -f "$FILE" ]; then
			echo "$FILE exists, ignoring"
		else 
			wget  "http://thumbnails.libretro.com/$remoteSystem/Named_Boxarts/$capture" -P ~/storage/external-1/$system/media/box2dfront/
		fi
		
		FILE=~/storage/external-1/$system/media/wheel/$capture
		if [ -f "$FILE" ]; then
			echo "$FILE exists, ignoring"
		else 
			wget  "http://thumbnails.libretro.com/$remoteSystem/Named_Titles/$capture" -P ~/storage/external-1/$system/media/wheel/
		fi
				
		
		
		#for rom in $entry
		#do
		#	firstString=$rom
		 #	secondString=".png"
		 #	echo capture="${firstString/.7z/"$secondString"}"             
		#
		#done
	 #	
	 
	  # wget http://thumbnails.libretro.com/$system/Named_Snaps/$capture
	 done
	 
   #rsync -r ~/pegasus-artwork/$system/ ~/storage/external-1/$system/
 done
 
 #rm -rf pegasus-artwork