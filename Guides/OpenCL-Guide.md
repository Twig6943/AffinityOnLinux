## Installing OpenCL Drivers for Nvidia GPU (AMD & Intel are currently unsupported)

Ensure the GPU drivers and OpenCL drivers are installed for your GPU.

For example, on **Arch Linux** while running an **Nvidia card**, you need to run:
```
sudo pacman -S opencl-nvidia
```

to get OpenCL drivers.

## Installing VKD3D-Proton

Download VKD3D-Proton for Lutris from [ProtonPlus](https://github.com/Vysp3r/ProtonPlus) or [Protonupqt](https://github.com/DavidoTek/ProtonUp-Qt)

(This might also work with Heroic Games Launcher.)

## Configuring Lutris

1. Open Lutris and go to the game's or app's configuration settings.
2. Navigate to **Runner Options**.
3. Select **vkd3d-proton** as the VKD3D version.
4. Disable **DXVK**.

## Launching Affinity Apps

Run the Affinity apps and verify OpenCL is working by checking the preferences for hardware acceleration.

(Note: OpenCL is in the very early stages and might not work, even if you have an Nvidia GPU.)
