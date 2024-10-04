## Requirements
Flatpak bottles

A GPU that supports Vulkan (OpenGL might also work fine but vulkan is recommended.)

## Downloading Affinity 

[Affinity Designer](https://store.serif.com/update/windows/designer/2/)

[Affinity Photo](https://store.serif.com/update/windows/photo/2/)

[Affinity Publisher](https://store.serif.com/update/windows/publisher/2/)

From the Drop down Choose the x64 .exe

## Acquiring Pre-built Wine binaries

As affinity is a bit of a complex program, it requires that you run it with a fork of WINE tailor-made for it.

Here are the currently available options:

[ElementalWarriorWine](https://github.com/Twig6943/ElementalWarrior-Wine-binaries/releases/tag/binary-release-1.0) (Recommended)

[Wine-TKG-Affinity](https://github.com/daegalus/wine-tkg-affinity/actions)

## Installing Bottles from flathub

```
sudo flatpak install flathub com.usebottles.bottles
```

## Extracting the wine made for Affinity Apps to the right directory 

Extract the Pre-built wine binaries you've downloaded earlier to Bottles' runners directory

```
/home/$USER/.var/app/com.usebottles.bottles/data/bottles/runners
```

Start Bottles

Press Import

![image](https://github.com/user-attachments/assets/da202e71-3d06-43a0-86df-0e829023e056)

Press configuration

![image](https://github.com/user-attachments/assets/18331f53-c3bc-4582-8200-8fa203ff40eb)

Select the [Bottles.yml]()


## Troubleshooting

(Change the settings in the wine tab if it doesn't work or if you have gpu glitches (it should work fine tho) )

# Optional wine dark theme 🍷
