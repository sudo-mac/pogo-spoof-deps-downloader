#!/bin/sh

################
#     APPS     #
################

# AirDroid Remote Support
echo "Downloading Remote Support..."
wget -c --progress=bar --limit-rate=1g https://dl.airdroid.com/RemoteSupport_1.1.4.0.apk -O Support.apk

# RootChecker
echo "Downloading RootChecker..."
wget -c --progress=bar --limit-rate=1g https://apkpure.com/root-checker/com.joeykrim.rootcheck/download -O RootChecker.apk

# RootExplorer
echo "Downloading RootExplorer..."
wget -c --progress=bar --limit-rate=1g https://d.apkpure.com/b/APK/com.speedsoftware.rootexplorer?version=latest -O RootExplorer.apk

# APKCombo
echo "Downloading APKCombo..."
wget -c --progress=bar --limit-rate=1g https://apkcombo.com/tr/apkcombo-installer/com.apkcombo.app/ -O APKCombo.apk

# HideMockLocation
echo "Downloading HideMockLocation..."
curl -sL $(curl -s https://api.github.com/repos/auag0/HideMockLocation/releases/tags/v1.2.2 | grep "browser_download_url.*\.apk" | cut -d '"' -f 4) -O HideMockLocation-latest.apk

# GPSJoystick
echo "Downloading GPSJoystick..."
wget -c --progress=bar --limit-rate=1g https://downloads.theappninjas.com/gpsjoystick-unlocked-arm64-v8a.apk -O GPSJoystick.apk

# Lawnchair
echo "Downloading Lawnchair..."
wget -c --progress=bar --limit-rate=1g $(curl -sL https://api.github.com/repos/lawnchairlauncher/lawnchair/releases/latest | grep "browser_download_url.*\.apk" | cut -d '"' -f 4) -O Lawnchair.apk

# PGsharp
echo "Downloading PGsharp..."
wget -c --progress=bar --limit-rate=1g https://www.pgsharp.com/dlpgsrt -O PGsharp.apk

# Pokemod
echo "Downloading Pokemod..."
wget -c --progress=bar --limit-rate=1g https://discovery.pokemod.dev/dl/pkmd/public -O Pokemod.apk

# PolygonX
echo "Downloading PolygonX..."
wget -c --progress=bar --limit-rate=1g "https://polygonx.dl.assets.evermorelabs.io/apk/$(curl -s https://polygonx.dl.assets.evermorelabs.io/apk/ | grep -O 'href="[^"]*\.apk"' | cut -d'"' -f2 | tail -1)" -O PolygonX.apk
# PGtools
echo "Downloading PGtools..."
wget -c --progress=bar --limit-rate=1g https://assets.pgtools.net/pgtools-5.6.15.apk -O PGtools.apk

# Shungo
echo "Downloading Shungo..."
wget -c --progress=bar --limit-rate=1g https://shungo.app/shungo.apk -O Shungo.apk

# DataHub
echo "Downloading DataHub..."
wget -c --progress=bar --limit-rate=1g https://assets.pgtools.net/data-hub-2.3.0.apk -O DataHub.apk

# AdAway
echo "Downloading AdAway..."
wget -c --progress=bar --limit-rate=1g $(curl -sL https://api.github.com/repos/AdAway/AdAway/releases/latest | grep "browser_download_url.*\.apk" | cut -d '"' -f 4) -O AdAway.apk
