{ ... }:
  let
    sshConfigFile = ./. + "/config";
  in
{
  home.file = {
    ".ssh/config".text = builtins.readFile sshConfigFile;
  };

}
