#!/bin/bash

# Check for required dependencies
missing_deps=""

check_dependency() {
  if ! command -v "$1" &> /dev/null; then
    missing_deps+="$1 "
  fi
}

check_dependency "wine"
check_dependency "winetricks"
check_dependency "wget"
check_dependency "curl"
check_dependency "7z"
check_dependency "tar"

if [ -n "$missing_deps" ]; then
  echo "The following dependencies are missing: $missing_deps"
  echo "Please install them and rerun the script."
  exit 1
fi

echo "All dependencies are installed!"
sleep 2

directory="$HOME/.AffinityLinux"

#Kill wine
wineserver -k
# Create install directory
mkdir -p "$directory"

# Fetch the latest release information from GitHub
asset_url=$(wget -qO- https://api.github.com/repos/Twig6943/ElementalWarrior-Wine-binaries/releases/latest | \
grep "browser_download_url.*ElementalWarriorWine.tar.gz" | \
cut -d '"' -f 4)

# Download the specific release asset
wget "$asset_url" -O "$directory/ElementalWarriorWine.tar.gz"

# Download files
wget https://upload.wikimedia.org/wikipedia/commons/3/3c/Affinity_Designer_2-logo.svg -O "/home/$USER/.local/share/icons/AffinityDesigner.svg"
wget https://archive.org/download/win-metadata/WinMetadata.zip -O "$directory/Winmetadata.zip"

# Extract wine binary
tar -xvzf "$directory/ElementalWarriorWine.tar.gz" -C "$directory"

# Rename wine binary directory
mv $directory/Twig6943-ElementalWarrior-Wine-binaries-* $directory/ElementalWarriorWine

# Erase the ElementalWarriorWine.tar.gz
rm "$directory/ElementalWarriorWine.tar.gz"

# WINETRICKS stuff
WINEPREFIX="$directory" winetricks --unattended dotnet48 corefonts
WINEPREFIX="$directory" winetricks renderer=vulkan

# Extract & delete WinMetadata.zip
7z x "$directory/Winmetadata.zip" -o"$directory/drive_c/windows/system32"
rm "$directory/Winmetadata.zip"
# Start the setup
echo "Put Setup .exe to $directory and press any key when ready."
read -n 1

echo "Click No if you get any errors. Press any key to continue."
read -n 1

#Set windows version to 11
WINEPREFIX="$directory" "$directory/ElementalWarriorWine/bin/winecfg" -v win11
WINEPREFIX="$directory" "$directory/ElementalWarriorWine/bin/wine" "$directory"/*.exe
rm "$directory"/affinity*.exe

#Wine dark theme
wget https://raw.githubusercontent.com/Twig6943/AffinityOnLinux/main/wine-dark-theme.reg -O "$directory/wine-dark-theme.reg"
WINEPREFIX="$directory" "$directory/ElementalWarriorWine/bin/regedit" "$directory/wine-dark-theme.reg"
rm "$directory/wine-dark-theme.reg"

#Remove Desktop entry created by wine
rm "/home/$USER/.local/share/applications/wine/Programs/Affinity Designer 2.desktop"

# Create Desktop Entry
echo "[Desktop Entry]" >> ~/.local/share/applications/AffinityDesigner.desktop
echo "Name=Affinity Designer" >> ~/.local/share/applications/AffinityDesigner.desktop
echo "Comment=Affinity Designer is a graphic designing and UX solution that helps businesses create concept art, logos, icons, UI designs, print projects and mock-ups, among other illustrations." >> ~/.local/share/applications/AffinityDesigner.desktop
echo "Icon=/home/$USER/.local/share/icons/AffinityDesigner.svg" >> ~/.local/share/applications/AffinityDesigner.desktop
echo "Path=$directory" >> ~/.local/share/applications/AffinityDesigner.desktop
echo "Exec=env WINEPREFIX=$directory $directory/ElementalWarriorWine/bin/wine \"$directory/drive_c/Program Files/Affinity/Designer 2/Designer.exe\"" >> ~/.local/share/applications/AffinityDesigner.desktop
echo "Terminal=false" >> ~/.local/share/applications/AffinityDesigner.desktop
echo "NoDisplay=false" >> ~/.local/share/applications/AffinityDesigner.desktop
echo "StartupWMClass=designer.exe" >> ~/.local/share/applications/AffinityDesigner.desktop
echo "Type=Application" >> ~/.local/share/applications/AffinityDesigner.desktop
echo "Categories=Graphics;" >> ~/.local/share/applications/AffinityDesigner.desktop
echo "StartupNotify=true" >> ~/.local/share/applications/AffinityDesigner.desktop

cp ~/.local/share/applications/AffinityDesigner.desktop ~/Desktop/AffinityDesigner.desktop

# Copy to desktop
cp "$HOME/.local/share/applications/AffinityDesigner.desktop" "$HOME/Desktop/AffinityDesigner.desktop"

# Special Thanks section
echo "******************************"
echo "    Special Thanks"
echo "******************************"
echo "Ardishco (github.com/raidenovich)"
echo "Deviaze"
echo "Kemal"
echo "Jacazimbo <3"
echo "Kharoon"
echo "Jediclank134"
read -n 1
