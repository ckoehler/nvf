{
  config,
  lib,
  ...
}: let
  inherit (lib.options) mkEnableOption mkOption;
  inherit (lib.nvim.types) mkPluginSetupOption;
in {
  options.vim.mini.bufremove = {
    enable = mkEnableOption "mini.bufremove";
    setupOpts = mkPluginSetupOption "mini.bufremove" {};
  };
}
