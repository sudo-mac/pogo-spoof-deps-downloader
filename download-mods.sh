#!/bin/sh

###############################
#     MAGISK AND MODULES     #
###############################

# Magisk
echo "Downloading Magisk..."
curl -sL $(curl -sL https://api.github.com/repos/topjohnwu/Magisk/releases/latest | grep "browser_download_url.*\.apk" | cut -d '"' -f 4) -o Magisk.apk

# ZygiskNext
echo "Downloading ZygiskNext..."
curl -sL $(curl -sL https://api.github.com/repos/Dr-TSNG/ZygiskNext/releases/latest | grep "browser_download_url.*\.zip" | cut -d '"' -f 4) -o ZygiskNext.zip

# Systemless Hosts
echo "Downloading Systemless Hosts..."
curl -sL $(curl -sL https://api.github.com/repos/gloeyisk/systemless-hosts/releases/latest | grep "browser_download_url.*\.zip" | cut -d '"' -f 4) -o Hosts.zip

# TrickyStore
echo "Downloading TrickyStore..."
curl -sL $(curl -sL https://api.github.com/repos/5ec1cff/TrickyStore/releases/latest | grep "browser_download_url.*\.zip" | cut -d '"' -f 4) -o TrickyStore.zip

# TrickyStoreAddon
echo "Downloading TrickyStoreAddon..."
curl -sL $(curl -sL https://api.github.com/repos/KOWX712/Tricky-Addon-Update-Target-List/releases/latest | grep "browser_download_url.*\.zip" | cut -d '"' -f 4) -o TrickyAddon.zip

# IntegrityBox
echo "Downloading IntegrityBox..."
curl -sL $(curl -sL https://api.github.com/repos/MeowDump/Integrity-Box/releases/latest | grep "browser_download_url.*\.zip" | cut -d '"' -f 4) -o IntegrityBox.zip

# LSPosed/Vector
echo "Downloading LSPosed..."
curl -sL $(curl -sL https://api.github.com/repos/JingMatrix/Vector/releases/latest | grep "browser_download_url.*\.zip" | cut -d '"' -f 4) -o LSPosed.zip

# Shamiko
echo "Downloading Shamiko..."
curl -sL $(curl -sL https://api.github.com/repos/LSPosed/LSPosed.github.io/releases/latest | grep "browser_download_url.*\.zip" | cut -d '"' -f 4) -o Shamiko.zip
