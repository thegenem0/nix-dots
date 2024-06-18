{ pkgs, ... }: 

{
  environment.systemPackages = with pkgs; [
    xwayland
    wl-clipboard
    cliphist
    hyprland
    hyprlock
    seatd
    xdg-desktop-portal-hyprland
    waybar
    nwg-displays
    sddm
    dunst
  ];
}
