{ config, options, lib, pkgs, ... }:
with lib;
let cfg = config.modules.editors;
in {
  imports = [
    ./nano.nix
    ./vscode.nix
  ];

  options.modules.editors = {
    default = mkOption {
      type = types.str;
      default =  "nano";
    };
  };

  config = mkIf (cfg.default != null) {
    home.sessionVariables.EDITOR = cfg.default;
  };
}
