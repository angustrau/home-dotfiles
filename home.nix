{ config, pkgs, libs, ... }:
{
  require = [
    ./modules
  ];

  programs.home-manager.enable = true;
  home.stateVersion = "20.09";
  home.username = "angustrau";
  home.homeDirectory = "/home/angustrau";

  modules = {
    desktop = {
      browsers = {
        firefox.enable = true;
      };
    };
    editors = {
      default = "nano";
      nano.enable = true;
      vscode.enable = true;
    };
  };
}