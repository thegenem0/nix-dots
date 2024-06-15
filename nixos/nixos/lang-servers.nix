{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    python311Packages.python-lsp-server
    nodePackages_latest.typescript
    nodePackages_latest.typescript-language-server
    nodePackages_latest.yaml-language-server
    nodePackages_latest.dockerfile-language-server-nodejs
    sumneko-lua-language-server
    marksman
    nil
    zls
    gopls
    delve
  ];  
}
