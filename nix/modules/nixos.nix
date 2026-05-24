# nix/modules/nixos.nix — auto-generated from walkdir.caixa.lisp
# description: "Recursively walk a directory."
{ config, lib, pkgs, ... }:
let
  cfg = config.services.walkdir;
in {
  options.services.walkdir = {
    enable = lib.mkEnableOption "walkdir";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.walkdir or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
