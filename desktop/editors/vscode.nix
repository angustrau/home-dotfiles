# Visual Studio Code

{ config, options, lib, pkgs, ... }:

with lib;
let
  cfg = config.modules.editors.vscode;
  vscode-extensions = with pkgs.vscode-extensions; [
    ms-vsliveshare.vsliveshare
  ];
in {
  options.modules.editors.vscode = {
    enable = mkEnableOption "Enable Visual Studio Code";
  };

  config = mkIf cfg.enable {
    home.programs.vscode = {
      enable = true;
      extensions = vscode-extensions;
    };

    # Prevent vscode from auto updating manually installed extensions
    # home.file = let cfgPath = ".vscode/extensions"; in {
    #   "${cfgPath}/.obsolete".text = builtins.toJSON (builtins.listToAttrs (map (x: {
    #     name = "${x.vscodeExtUniqueId}-${(builtins.parseDrvName x.name).version}";
    #     value = true;
    #   }) vscode-extensions));
    # };
  };
}
