{ pkgs, ... }: 
{
  nixpkgs.config = {
    permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
  };

  environment.systemPackages = with pkgs; [
    gnumake
    gcc
    nodejs
    python
    (python3.withPackages (ps: with ps; [ requests ]))
  ];
}
