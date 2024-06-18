{ pkgs, ... }: 

{
  environment.systemPackages = with pkgs; [
    file
    tree
    wget
    git
    fastfetch
    htop
    nix-index
    unzip
    scrot
    ffmpeg
    light
    lux
    mediainfo
    ranger
    zram-generator
    cava
    zip
    ntfs3g
    yt-dlp
    brightnessctl
    swww
    openssl
    lazygit
    bluez
    bluez-tools
  ];
}
