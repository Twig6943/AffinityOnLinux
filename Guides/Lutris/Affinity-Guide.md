# How to Set Up Wine for Affinity on Heroic Games Launcher

## 1. Download Desired Wine Version

Choose one of the following Wine versions:

- [**ElementalWarrior**](https://github.com/Twig6943/ElementalWarrior-wine-binaries/releases) (Recommended) (Just right click and extract)
- [**Wine-TKG-Affinity**](https://github.com/daegalus/wine-tkg-affinity/releases) (You're supposed to extract the usr folder inside the  and then rename it to wine-tkg-affinity)

---

## 2. Install Lutris


## Extract the Elemental Warrior's Pre-built wine binaries to Lutris wine directory

```
$HOME/.local/share/lutris/runners/wine/
```


## Settings Up Lutris For Affinity
Open up lutris and then click on

* add button(+)

and at the bottom

* Add Locally Install Game

Name it According to the Affinity app you are using

## Setting the Wine Version

Set the wine version to ElementalWarriorWine

## Selecting the Programs .exe According to what you Want to Install

Select the setup .exe you've downloaded from affinity's website as the executable

Click Finish

## Initialize the prefix

In order to initialize the prefix run the setup file from lutris. (It'll probably crash wait for it to crash if it somehow opens up close it yourself)

## Setting Up Affinity Wine Settings and Winetricks

* click on an affinity app on lutris and navigate to wine section on the bottom

* open winetricks from there (it will open up a popup window which is winetrick GUI)

* Select the default wineprefix
* install a windows dll and components

and click OK

 Search & install these dependencies;

* dotnet48

click ok

* install a font

click ok

* Search & install
* corefonts

(Wait while its installing the dependencies. Its %90 not stuck but rather taking its time!!!)

* click ok

* Change settings

Toggle
 * win11

Toggle
 * renderer=vulkan

and click OK

Keep pressing "Cancel" till the winetricks window closes

## Placing WinMetadata

Unzip [WinMetadata.zip](https://archive.org/download/win-metadata/WinMetadata.zip)

to  drive_c/windows/system32 on the wineprefix

## Running Affinity Setup and Installing Photo/Designer/Publisher

Press launch and the setup should work

Once its done installing right click to affinity on lutris and go to configure
* Game options

Next Change the executable to

* drive_c/Program Files/Affinity/Photo 2/Photo.exe
* drive_c/Program Files/Affinity/Designer 2/Designer.exe
* drive_c/Program Files/Affinity/Publisher 2/Publisher.exe

Click save & launch it.
