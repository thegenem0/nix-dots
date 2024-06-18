{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pipewire
    pulseaudio
    pamixer
  ];
}
