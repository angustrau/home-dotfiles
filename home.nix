{ config, pkgs, libs, ... }:
{
  require = [
    ./desktop
  ];

  programs.home-manager.enable = true;
  home.stateVersion = "20.09";
  home.username = "angustrau";

  modules = {
    desktop = {
      browsers = {
        firefox.enable = true;
      };
    };
  };
}