{ ... }: {
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/module-root.nix
    ./style/stylix.nix
  ];

  nixpkgs.overlays = [];

  networking.hostName = "nixos";

  time.timeZone = "Europe/London";

  i18n.defaultLocale = "en_US.UTF-8";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "24.05";
}
