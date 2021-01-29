# Nano

{ config, options, lib, pkgs, ... }:

with lib;
let cfg = config.modules.editors.nano;
in {
  options.modules.editors.nano = {
    enable = mkEnableOption "Enable Firefox";
  };

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      nano
    ];
  };
}
