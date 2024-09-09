1. Install NVIDIA opencl Drivers

    Ensure the NVIDIA drivers and opencl drivers are installed for your GPU
    For Arch:
    sudo pacman -S opencl-nvidia

2. Install VKD3D-Proton

    download vkd3d-proton to Lutris from [ProtonPlus](https://github.com/ProtonPlus/ProtonPlus)


3. Configure Lutris

    Open Lutris and go to the game or app's configuration settings.
    Navigate to Runner Options.
    Select vkd3d-proton as the vkd3d version.
    Disable DXVK.

4. Launch Affinity Apps

Run the Affinity apps and verify OpenCL is working by checking the preferences for hardware acceleration.
