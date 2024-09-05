#!/bin/bash
# This script installs Affinity Photo using WINE. Ensure you have WINE, WGET, 7Z, and TAR installed.

# Check for required dependencies
missing_deps=""

check_dependency() {
  if ! command -v "$1" &> /dev/null; then
    missing_deps+="$1 "
  fi
}

check_dependency "wine"
check_dependency "wget"
check_dependency "7z"
check_dependency "tar"

if [ -n "$missing_deps" ]; then
  echo "The following dependencies are missing: $missing_deps"
  echo "Please install them and rerun the script."
  exit 1
fi

echo "All dependencies are installed!"
sleep 2

directory="$HOME/.maymun3"

# Create install directory
mkdir -p "$directory"

# Download files
wget https://upload.wikimedia.org/wikipedia/commons/f/f5/Affinity_Photo_V2_icon.svg -O "$HOME/.local/share/icons/hicolor/scalable/apps/affinity.svg"
wget https://github.com/Twig6943/ElementalWarrior-Wine-binaries/releases/download/binary-release-1.0/ElementalWarriorWine.tar.gz -O "$directory/ElementalWarriorWine.tar.gz"
wget https://archive.org/download/win-metadata/WinMetadata.zip -O "$directory/Winmetadata.zip"

# Extract wine binary
tar -xvzf "$directory/ElementalWarriorWine.tar.gz" -C "$directory"

# Erase the ElementalWarriorWine.tar.gz
rm "$directory/ElementalWarriorWine.tar.gz"

# WINETRICKS stuff
WINEPREFIX="$directory" winetricks --unattended dotnet48 allfonts
WINEPREFIX="$directory" winetricks renderer=vulkan
WINEPREFIX="$directory" "$directory/ElementalWarriorWine/bin/winecfg" -v win11

# Extract & delete WinMetadata.zip
7z x "$directory/Winmetadata.zip" -o"$directory/drive_c/windows/system32"
rm "$directory/Winmetadata.zip"
# Start the setup
echo "Put Affinity Photo's setup .exe to $directory and press Enter when ready."
read -n 1 -s

echo "Click No if you get any errors."
read -n 1 -s

WINEPREFIX="$directory" "$directory/ElementalWarriorWine/bin/wine" "$directory/affinity-photo-msi-2.5.5.exe"
rm "$directory/affinity-photo-msi-2.5.5.exe"


#Remove Desktop entry created by wine
rm "/home/$USER/.local/share/applications/wine/Programs/Affinity Photo 2.desktop"

# Create Desktop Entry
desktop_entry="$HOME/.local/share/applications/AffinityPhoto.desktop"

cat <<EOL > "$desktop_entry"
[Desktop Entry]
Name=Affinity Photo
Comment=A powerful image editing software.
Icon=$HOME/.local/share/icons/hicolor/scalable/apps/affinity.svg
Exec=WINEPREFIX=$directory $directory/ElementalWarriorWine/bin/wine "$directory/drive_c/Program Files/Affinity/Photo 2/Photo.exe"
Path=$directory
NoDisplay=false
StartupNotify=true
Terminal=false
StartupWMClass=photo.exe
Type=Application
Categories=Graphics;
StartupNotify=true
EOL

# Copy to desktop
cp "$desktop_entry" "$HOME/Desktop/AffinityPhoto.desktop"

# Special Thanks section
echo
echo "******************************"
echo "    Special Thanks"
echo "******************************"
echo "Ardishco"
echo "Deviaze"
echo "Kemal"
echo "Jacazimbo"
echo "Kharoon"
echo "Jediclank134"
read -n 1 -s
