{ config, pkgs, libs, ... }:
{
  imports = [
    ./desktop
  ];

  home.stateVersion = "20.09";
  programs.home-manager.enable = true;

  modules = {
    desktop = {
      firefox.enable = true;
    };
  };
}