{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    chromium
    kitty
    alacritty
    wofi
    gparted
    firefox
  ];
} 
