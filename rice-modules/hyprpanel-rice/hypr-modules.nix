# Home-manager module to setup hyprland
{config, pkgs, lib, inputs, systemSettings, userSettings, themeSettings, ...}:

{
  
  imports = [
    #inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
    ./hypr-modules/hyprland.nix
    #./hypr-modules/hyprpaper.nix
    ./hypr-modules/hyprlock.nix
    ./hypr-modules/hypridle.nix
  ];
  
}
