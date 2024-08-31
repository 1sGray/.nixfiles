{config, pkgs, lib, inputs, systemSettings, userSettings, themeSettings, ...}:

{
  imports = [ inputs.ags.homeManagerModules.default ];
  
  programs.ags = { 
    enable = true; 
    configDir = ./ags;
    extraPackages = with pkgs; [
      gtksourceview
      webkitgtk
      accountsservice
    ];
  };
  
}
