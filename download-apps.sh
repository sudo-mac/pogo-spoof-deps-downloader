#!/bin/sh

################
#     APPS     #
################

# AirDroid Remote Support
echo "Downloading Remote Support..."
curl -sL https://dl.airdroid.com/RemoteSupport_1.1.4.0.apk -o Support.apk

# RootChecker
echo "Downloading RootChecker..."
curl -sL https://apkpure.com/root-checker/com.joeykrim.rootcheck/download -o RootChecker.apk

# RootExplorer
echo "Downloading RootExplorer..."
curl -sL https://d.apkpure.com/b/APK/com.speedsoftware.rootexplorer?version=latest -o RootExplorer.apk

# APKCombo
echo "Downloading APKCombo..."
curl -sL https://apkcombo.com/tr/apkcombo-installer/com.apkcombo.app/ -o APKCombo.apk

# HideMockLocation
echo "Downloading HideMockLocation..."
curl -sL $(curl -s https://api.github.com/repos/auag0/HideMockLocation/releases/tags/v1.2.2 | grep "browser_download_url.*\.apk" | cut -d '"' -f 4) -o HideMockLocation-latest.apk

# GPSJoystick
echo "Downloading GPSJoystick..."
curl -sL https://downloads.theappninjas.com/gpsjoystick-unlocked-arm64-v8a.apk -o GPSJoystick.apk

# Lawnchair
echo "Downloading Lawnchair..."
curl -sL $(curl -sL https://api.github.com/repos/lawnchairlauncher/lawnchair/releases/latest | grep "browser_download_url.*\.apk" | cut -d '"' -f 4) -o Lawnchair.apk

# PGsharp
echo "Downloading PGsharp..."
curl -sL https://www.pgsharp.com/dlpgsrt -o PGsharp.apk

# Pokemod
echo "Downloading Pokemod..."
curl -sL https://discovery.pokemod.dev/dl/pkmd/public -o Pokemod.apk

# PolygonX
echo "Downloading PolygonX..."
curl -sL "https://polygonx.dl.assets.evermorelabs.io/apk/$(curl -s https://polygonx.dl.assets.evermorelabs.io/apk/ | grep -o 'href="[^"]*\.apk"' | cut -d'"' -f2 | tail -1)" -o PolygonX.apk
# PGtools
echo "Downloading PGtools..."
curl -sL https://assets.pgtools.net/pgtools-5.6.15.apk -o PGtools.apk

# Shungo
echo "Downloading Shungo..."
curl -sL https://shungo.app/shungo.apk -o Shungo.apk

# DataHub
echo "Downloading DataHub..."
curl -sL https://assets.pgtools.net/data-hub-2.3.0.apk -o DataHub.apk

# AdAway
echo "Downloading AdAway..."
curl -sL $(curl -sL https://api.github.com/repos/AdAway/AdAway/releases/latest | grep "browser_download_url.*\.apk" | cut -d '"' -f 4) -o AdAway.apk
