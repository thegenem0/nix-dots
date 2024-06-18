{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.thegenem0 = {
      isNormalUser = true;
      description = "Thegenem0";
      extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" ];
      packages = with pkgs; [];
    };
  };

  # Enable automatic login for the user.
  services.getty.autologinUser = "thegenem0";
}
