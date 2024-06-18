{ pkgs, ... }:
  let
  themePath = "../../../themes/io/io.yaml";
  backgroundUrl = builtins.readFile (./. + "../../../themes/io/backgroundurl.txt");
  backgroundSha256 = builtins.readFile (./. + "../../../themes/io/backgroundsha256.txt");
  in
{
  stylix = {
    polarity = "dark";
   
    image = pkgs.fetchurl {
     url = backgroundUrl;
     sha256 = backgroundSha256;
    };

    fonts = {
      monospace = {
        package = pkgs.nerdfonts.override {fonts = ["JetBrainsMono"];};
        name = "JetBrainsMono Nerd Font Mono";
      };
    };
  };
}
