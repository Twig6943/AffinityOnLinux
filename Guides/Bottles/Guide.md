# How to Set Up Wine for Affinity on Bottles

## 1. Install Desired Wine Version (ElementalWarrior recommended)

Choose one of the following Wine versions:

- [**ElementalWarrior**](https://github.com/Twig6943/ElementalWarrior-wine-binaries/releases)
- 
- [**Wine-TKG-Affinity**](https://github.com/daegalus/wine-tkg-affinity/actions)

## 2. Install Bottles (Flatpak recommended)

Install Bottles using either **AppImage** or **Flatpak**.

Flatpak: https://flathub.org/apps/com.usebottles.bottles
AppImage: https://github.com/ivan-hc/Bottles-appimage/releases

## 3. Extract Wine Binaries

Extract the Wine binaries you downloaded earlier to Heroic Games Launcher’s Wine directory:

- **Flatpak:** `/home/$USER/.var/app/com.usebottles.bottles/data/bottles/runners`
- **AppImage:** `/home/$USER/.local/share/bottles/runners`

## 4. Add Bottle in Bottles

1. Open Bottles and click on the plus icon.
2. Set the enviroment to Custom.
3. Import the [configuration] file
3. Set the runner to **ElementalWarriorWine** or **Wine-TKG-Affinity**.
5. Click **Create**.

## 5. Extract WinMetadata

1. Unzip the `WinMetadata` folder from the [WinMetadata.zip file](https://nextcloud.ardishco.net/s/4zNC7iJA7Q2QSzG/download/WinMetadata.zip) into `drive_c/windows/system32`.

Affinity Apps should now be working inside that bottle.

## Optional: Enable Dark Theme

To enable the dark theme, run [this registry file](https://raw.githubusercontent.com/Twig6943/AffinityOnLinux/refs/heads/main/wine-dark-theme.reg) inside the Wine prefix.
