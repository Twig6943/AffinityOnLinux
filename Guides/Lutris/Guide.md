Currenyly Lutris is the best method for Nvidia GPU users.

<img src="https://raw.githubusercontent.com/Twig6943/AffinityOnLinux/refs/heads/main/Assets/NewLogos/AffinityLutris.png" width="400"/>

# How to Set Up Wine for Affinity on Lutris

## 1. Install ElementalWarrior Wine Version

- [ElementalWarrior](https://github.com/Twig6943/ElementalWarrior-wine-binaries/releases) (Recommended) (Just right click and extract)

## 2. Install Lutris

## 3. Copy & paste Wine Binaries

Copy & paste the wine binaries you've extracted earlier to Bottles’ runners directory:

- `/home/$USER/.local/share/lutris/runners/wine/`

## Make sure to name the wine-binaries as ElementalWarriorWine-x86_64

## 4. Add Affinity in Lutris

1. Open Affinity and click on the plus icon.
2. Install from a local install script
3. Import the [configuration](https://github.com/Twig6943/AffinityOnLinux/blob/main/Guides/Lutris/Affinity-Lutris.yaml) file
3. Click Install
5. Choose Windows 11, when winecfg pops up.
6. Close when the configuration is done.

## 5. Extract WinMetadata

1. Unzip the `WinMetadata` folder from the [WinMetadata.zip file](https://nextcloud.ardishco.net/s/4zNC7iJA7Q2QSzG/download/WinMetadata.zip) into `drive_c/windows/system32`.

Now you can install affinity apps through lutris.

Right click on Affinity Suite and Configure.
Name it According to the Affinity app you are using


## Selecting the Programs .exe According to what you Want to Install

Select the setup .exe you've downloaded from affinity's website as the executable

Click Finish

Press launch and the setup should work

Once its done installing right click to affinity on lutris and go to configure
* Game options

Next Change the executable to

* drive_c/Program Files/Affinity/Photo 2/Photo.exe
* drive_c/Program Files/Affinity/Designer 2/Designer.exe
* drive_c/Program Files/Affinity/Publisher 2/Publisher.exe

Click save & launch it.

You can install other apps by
* add button(+)

and at the bottom

* Add Locally Install Game

Name it According to the Affinity app you are using, and setup the correct wineprefix and set the correct wine and copy the settings, then do the installation process.
