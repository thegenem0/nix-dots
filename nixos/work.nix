{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    slack
    awscli2
    gnumake
    cmake
  ];
}
