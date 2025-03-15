Currenyly Lutris is the best method for Nvidia GPU users.

<img src="/Assets/NewLogos/AffinityLutris.png" width="400"/>

# How to Set Up Wine for Affinity on Lutris

## 1. Install ElementalWarrior Wine Version

- [ElementalWarrior](https://github.com/Twig6943/ElementalWarrior-wine-binaries/releases) (Recommended) (Just right click and extract)

- [Wine-tkg-affinity](https://github.com/daegalus/wine-tkg-affinity/releases) also works with Lutris but if you're going to use that you gotta edit the .yaml yourself.

## 2. Install Lutris (Flatpak recommended)

Install Lutris using either **Flatpak** or **AppImage**.

- Flatpak: https://flathub.org/apps/net.lutris.Lutris
- AppImage: https://github.com/lucasmz1/Lutris_AppImage

## 3. Copy & paste Wine Binaries

Copy & paste the wine binaries you've extracted earlier to Lutris’ runners directory:

- **Flatpak:** `~/.var/app/net.lutris.Lutris/data/lutris/runners/wine/`
- **AppImage:** `~/.local/share/lutris/runners/wine/`

## Rename the `ElementalWarriorWine` folder to `ElementalWarriorWine-x86_64`

It should look like this at the end

![image](https://github.com/user-attachments/assets/503ae826-3df7-420c-923a-5a575b31eda8)

## 4. Add Affinity to Lutris

1. Open Lutris and click on the plus icon.
2. Install from a local install script
3. Import the [configuration](/Guides/Lutris/Affinity-Lutris.yaml) file
3. Click Install

## 5. Extract WinMetadata

1. Unzip the `WinMetadata` folder from the [WinMetadata.zip file](https://archive.org/download/win-metadata/WinMetadata.zip) into `drive_c/windows/system32`.

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

* `drive_c/Program Files/Affinity/Photo 2/Photo.exe`
* `drive_c/Program Files/Affinity/Designer 2/Designer.exe`
* `drive_c/Program Files/Affinity/Publisher 2/Publisher.exe`

Click save & launch it.

You can install other apps by
* right click to the app you've installed first > duplicate

Name it According to the Affinity app you are using, set the correct .exe
