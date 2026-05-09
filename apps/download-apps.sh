#!/bin/sh

################
#     APPS     #
################

# AirDroid Remote Support
echo "Downloading Remote Support..."
wget -qc --show-progress https://dl.airdroid.com/RemoteSupport_1.1.4.0.apk -O Support.apk

# RootChecker
echo "Downloading RootChecker..."
wget -qc --show-progress https://apkpure.com/root-checker/com.joeykrim.rootcheck/download -O RootChecker.apk

# RootExplorer
echo "Downloading RootExplorer..."
wget -qc --show-progress https://d.apkpure.com/b/APK/com.speedsoftware.rootexplorer?version=latest -O RootExplorer.apk

# APKCombo
echo "Downloading APKCombo..."
wget -qc --show-progress https://apkcombo.com/tr/apkcombo-installer/com.apkcombo.app/ -O APKCombo.apk

# HideMockLocation
echo "Downloading HideMockLocation..."
curl -sL $(curl -s https://api.github.com/repos/auag0/HideMockLocation/releases/tags/v1.2.2 | grep "browser_download_url.*\.apk" | cut -d '"' -f 4) -O HideMockLocation-latest.apk

# GPSJoystick
echo "Downloading GPSJoystick..."
wget -qc --show-progress https://downloads.theappninjas.com/gpsjoystick-unlocked-arm64-v8a.apk -O GPSJoystick.apk

# Lawnchair
echo "Downloading Lawnchair..."
wget -qc --show-progress $(curl -sL https://api.github.com/repos/lawnchairlauncher/lawnchair/releases/latest | grep "browser_download_url.*\.apk" | cut -d '"' -f 4) -O Lawnchair.apk

# PGsharp
echo "Downloading PGsharp..."
wget -qc --show-progress https://www.pgsharp.com/dlpgsrt -O PGsharp.apk

# Pokemod
echo "Downloading Pokemod..."
wget -qc --show-progress https://discovery.pokemod.dev/dl/pkmd/public -O Pokemod.apk

# PolygonX
echo "Downloading PolygonX..."
wget -qc --show-progress "https://polygonx.dl.assets.evermorelabs.io/apk/$(curl -s https://polygonx.dl.assets.evermorelabs.io/apk/ | grep -O 'href="[^"]*\.apk"' | cut -d'"' -f2 | tail -1)" -O PolygonX.apk
# PGtools
echo "Downloading PGtools..."
wget -qc --show-progress https://assets.pgtools.net/pgtools-5.6.15.apk -O PGtools.apk

# Shungo
echo "Downloading Shungo..."
wget -qc --show-progress https://shungo.app/shungo.apk -O Shungo.apk

# DataHub
echo "Downloading DataHub..."
wget -qc --show-progress https://assets.pgtools.net/data-hub-2.3.0.apk -O DataHub.apk

# AdAway
echo "Downloading AdAway..."
wget -qc --show-progress $(curl -sL https://api.github.com/repos/AdAway/AdAway/releases/latest | grep "browser_download_url.*\.apk" | cut -d '"' -f 4) -O AdAway.apk
