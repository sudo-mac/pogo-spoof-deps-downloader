#!/bin/sh

###################
#  crDroid12-A16  #
###################

# ROM
echo "Downloading crDroid12 (Android 16) ROM for Pixel 7..."
wget -c --progress=bar --limit-rate=1g https://sourceforge.net/projects/crdroid/files/panther/12.x/crDroidAndroid-16.0-20260415-panther-v12.9.zip/download -O ROM.zip

# Recovery
echo "Downloading recovery..."
wget -c --progress=bar --limit-rate=1g https://sourceforge.net/projects/crdroid/files/panther/12.x/recovery/20260415-vendor_boot.img/download -O vendor_boot.img

# Gapps
echo "Downloading Gapps for Android 16..."
wget -c --progress=bar --limit-rate=1g "https://sourceforge.net/projects/nikgapps/files/Elite-Releases/306bobby/Android-16/16-Jul-2025/NikGapps-redbull-lite-arm64-16-20250716-signed.zip/download" -O Gapps.zip
