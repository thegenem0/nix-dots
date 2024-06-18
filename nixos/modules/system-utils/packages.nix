{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    feh
    imv
    dmenu
    screenkey
    gromit-mpx
    grim
    grimblast
    slurp
    flameshot
    swappy
  ];
}
