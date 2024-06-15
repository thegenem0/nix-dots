{
  description = "thegenem0 Nix Config";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = { nixpkgs, ... } @ inputs:
  {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./configuration.nix
        ./hardware-configuration.nix
        ./nvidia.nix
        ./opengl.nix
        ./audio.nix
        ./usb.nix
        ./time.nix
        ./bootloader.nix
        ./nix-settings.nix
        ./nixpkgs.nix
        ./garbage.nix
        # ./auto-upgrade.nix
        ./linux-kernel.nix
        ./screen.nix
        ./displayman.nix
        ./theme.nix
        ./internationalisation.nix
        ./fonts.nix
        ./security-services.nix
        ./services.nix
        # ./gnome.nix
        ./hyprland.nix
        ./env-vars.nix
        ./bluetooth.nix
        ./networking.nix
        ./open-ssh.nix
        ./firewall.nix
        ./users.nix
        ./virtualisation.nix
        ./langs.nix
        ./utils.nix
        ./terminal-utils.nix
        ./work.nix
      ];
    };
  };
}
