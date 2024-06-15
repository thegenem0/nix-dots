{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    lazygit
    xh
    tgpt
    topgrade
    ripgrep
    fastfetch
    sd
    duf
    du-dust
    fd
    jq
    zoxide
    tokei
    fzf
    bat
    mdcat

    rsclock
    cava
    figlet
  ];
}
