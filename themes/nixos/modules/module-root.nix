{
  imports = [
    ./system/bootloader.nix
    ./system/env.nix
    ./system/user.nix
    ./system/networking.nix
    ./system/garbage-collection.nix
    ./system/usb.nix
    # ./system/auto-upgrade.nix

    ./system-utils/packages.nix
    ./system-utils/trim.nix
    ./system-utils/bluetooth.nix
    ./system-utils/virtmanager.nix
    ./system-utils/openssh.nix
    ./system-utils/containers.nix

    ./personal/packages.nix
    ./work/packages.nix

    ./apps/packages.nix

    ./audio/packages.nix
    ./audio/audio.nix

    ./cli-tools/packages.nix

    ./display/packages.nix
    ./display/nvidia.nix
    ./display/opengl.nix
    ./display/display-manager.nix
    ./display/hyprland.nix

    ./fonts/fonts.nix

    ./langs/packages.nix

    ./nixvim/nixvim.nix
  ];
}
