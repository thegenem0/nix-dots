{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    feh
    imv
    dmenu
    screenkey
    mako
    gromit-mpx
    grim
    grimblast
    slurp
    flameshot
    swappy
  ];
}
