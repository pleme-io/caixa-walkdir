# nix/modules/home-manager.nix — auto-generated from walkdir.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.walkdir; in {
  options.programs.walkdir = {
    enable = lib.mkEnableOption "walkdir";
    package = lib.mkOption { type = lib.types.package; default = pkgs.walkdir or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
