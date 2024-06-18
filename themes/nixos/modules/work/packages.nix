{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    slack
    awscli2
    jetbrains-toolbox
  ];
}
