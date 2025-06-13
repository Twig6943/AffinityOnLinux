Currenyly Lutris is the best method for Nvidia GPU users.

<img src="/Assets/NewLogos/AffinityLutris.png" width="400"/>

# How to Set Up Wine for Affinity on Lutris

### 1. Install Lutris (Flatpak recommended)

Install Lutris using either **Flatpak** or **AppImage**.

- Flatpak: https://flathub.org/apps/net.lutris.Lutris
- AppImage: https://github.com/pkgforge-dev/Lutris-AppImage

### 2. Install wine version of your choice

- [ElementalWarriorWine](https://github.com/Twig6943/wine/releases) (Recommended) (Just right click and extract)

- [wine-tkg-affinity](https://github.com/daegalus/wine-tkg-affinity/releases) (you need to extract the `usr` folder inside the archive to your wine runners folder and then rename it to `wine-tkg-affinity-x86_64` )

### 3. Copy & paste Wine Binaries

Copy & paste the wine binaries you've extracted earlier to Lutris’ runners directory:

- **Flatpak:** `~/.var/app/net.lutris.Lutris/data/lutris/runners/wine/`
- **AppImage:** `~/.local/share/lutris/runners/wine/` 

### 4. Add Affinity to Lutris

1. Open Lutris and click on the plus icon.
2. Install from a local install script.
3. Import the configuration file for your wine fork.

- [ElementalWarrior](/Guides/Lutris/InstallScripts/Affinity-ew.yaml)
- [Wine-tkg-affinity](/Guides/Lutris/InstallScripts/Affinity-tkg.yaml)

4.Press `Install`

5. Select the affinity's setup .exe

6. Press `Install`

# Configuring the executable path

Once its done installing right click to affinity on lutris and go to configure
* Game info

Change the name to

* `Affinity Photo`
* `Affinity Designer`
* `Affinity Publisher`

Go to
* Game options

Change the executable to

* `drive_c/Program Files/Affinity/Photo 2/Photo.exe`
* `drive_c/Program Files/Affinity/Designer 2/Designer.exe`
* `drive_c/Program Files/Affinity/Publisher 2/Publisher.exe`

Click save & launch it.

# Installing other apps to the same prefix

You can install other apps by
* right click to the app you've installed first > duplicate

Name it According to the Affinity app you are using, set the correct .exe
