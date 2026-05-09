#!/bin/bash

# sudo bash Scripts/Pixel6-Dirinstall.sh;

set -e

# CHOICE OF POKEMON GO SPOOFING PACKAGE
while true; do

    echo && read -p "PGSharp [1] or Pokemod [2]?: " pokechoice
    
    case $pokechoice in
        [1]* ) echo && echo "Installing PGSharp spoofers package...";
	    for device in $(adb wait-for-device devices | grep device$ | cut -f1); do
	      adb -s "$device" shell su -c 'exit'
	      adb -s "$device" install PGSharp.apk >> /dev/null;
	      adb -s "$device" push lawnchair-backups/PGsharp.lawnchairbackup /sdcard/ >> /dev/null;
      	    done
	    break;;
        [2]* ) echo && echo "Installing Pokemod spoofers package";
	    for device in $(adb wait-for-device devices | grep device$ | cut -f1); do
	      adb -s "$device" shell su -c 'exit'
	      adb -s "$device" install Pokemod.apk >> /dev/null;
	      adb -s "$device" push lawnchair-backups/Pokemod.lawnchairbackup /sdcard/ >> /dev/null;
            done
	    break;;
        * ) echo "Invalid Response!";;
    esac

done


for device in $(adb devices | grep device$ | cut -f1); do

# FULL LOAD OF COMPATIBLE POKEMON GO APPS
  adb -s "$device" install AdAway.apk >> /dev/null
  adb -s "$device" install AirDroid-RemoteSupport.apk >> /dev/null
  adb -s "$device" install APKcombo.apk >> /dev/null
  adb -s "$device" install DataHub.apk >> /dev/null
  adb -s "$device" install GPSJoystick.apk >> /dev/null
  adb -s "$device" install HideMockLocation.apk >> /dev/null
  adb -s "$device" install iPoGo.apk >> /dev/null
  adb -s "$device" install Lawnchair.apk >> /dev/null
  adb -s "$device" install PGtools.apk >> /dev/null
  adb -s "$device" install PolygonX.apk >> /dev/null
  adb -s "$device" install RemoteSupport-Plugin.apk >> /dev/null
  adb -s "$device" install RootChecker.apk >> /dev/null
  adb -s "$device" install RootExplorer.apk >> /dev/null
  adb -s "$device" install Shungo.apk >> /dev/null
  adb -s "$device" push LSPosed.zip /sdcard/ >> /dev/null
  adb -s "$device" push PlayIntegrityFix.zip /sdcard/ >> /dev/null
  adb -s "$device" push Shamiko.zip /sdcard/ >> /dev/null
  adb -s "$device" push TrickyAddon.zip /sdcard/ >> /dev/null
  adb -s "$device" push TrickyStore.zip /sdcard/ >> /dev/null
  adb -s "$device" push ZygiskNext.zip /sdcard/ >> /dev/null
  adb -s "$device" push IntegrityBox.zip /sdcard/ >> /dev/null
  adb -s "$device" push Hosts.zip /sdcard/ >> /dev/null
  adb -s "$device" shell su -c 'magisk --install-module /sdcard/Hosts.zip' >> /dev/null 
  adb -s "$device" shell su -c 'magisk --install-module /sdcard/PlayIntegrityFix.zip' >> /dev/null 
  adb -s "$device" shell su -c 'magisk --install-module /sdcard/LSPosed.zip' >> /dev/null
  adb -s "$device" shell su -c 'magisk --install-module /sdcard/ZygiskNext.zip' >> /dev/null
  adb -s "$device" shell su -c 'magisk --install-module /sdcard/Shamiko.zip' >> /dev/null
  adb -s "$device" shell su -c 'magisk --install-module /sdcard/TrickyStore.zip' >> /dev/null
  adb -s "$device" shell su -c 'magisk --install-module /sdcard/TrickyAddon.zip' >> /dev/null
  adb -s "$device" shell su -c 'magisk --install-module /sdcard/IntegrityBox.zip' >> /dev/null
  adb -s "$device" shell su -c 'rm -rf /sdcard/PlayIntegrityFix.zip' >> /dev/null
  adb -s "$device" shell su -c 'rm -rf /sdcard/IntegrityBox.zip' >> /dev/null
  adb -s "$device" shell su -c 'rm -rf /sdcard/LSPosed.zip' >> /dev/null
  adb -s "$device" shell su -c 'rm -rf /sdcard/ZygiskNext.zip' >> /dev/null
  adb -s "$device" shell su -c 'rm -rf /sdcard/Shamiko.zip' >> /dev/null
  adb -s "$device" shell su -c 'rm -rf /sdcard/TrickyStore.zip' >> /dev/null
  adb -s "$device" shell su -c 'rm -rf /sdcard/TrickyAddon.zip' >> /dev/null
  adb -s "$device" shell su -c 'rm -rf /sdcard/Hosts.zip' >> /dev/null
  # adb -s "$device" reboot

done

# RANDOM COMPUTER GENERATED BOOTANIMATION
while true; do

    echo && read -p "Would you like a custom bootanimation chosen by random? (Y/n): " yn

    case $yn in
        [yY]* ) echo && echo "But... which one will it be...?";
            commands=(
                "adb -s '$device' push Bootanimations/Dratini.zip /sdcard/bootanimation.zip >> /dev/null"
                "adb -s '$device' push Bootanimations/Charizard.zip /sdcard/bootanimation.zip >> /dev/null"
                "adb -s '$device' push Bootanimations/Pikachu.zip /sdcard/bootanimation.zip >> /dev/null"
                "adb -s '$device' push Bootanimations/Horsea.zip /sdcard/bootanimation.zip >> /dev/null");
            index=$((RANDOM % ${#commands[@]}));
            eval ${commands[$index]};
            sleep 1;
            echo && echo "Random Bootanimation Downloaded! (:"; break;;
        [nN]* ) echo "Skipping Random Bootanimation... ):"; break;;
        * ) echo "Invalid Response!";;
    esac

done
echo && echo "Press enter to exit." && read
