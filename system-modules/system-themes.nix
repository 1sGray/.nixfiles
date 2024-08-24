{config, pkgs, lib, inputs, themeSettings, ...}:

let
  wallpaperPath = ../assets/${themeSettings.wallpaper};
in
{
  
  stylix.enable = false;
  imports = [inputs.stylix.nixosModules.stylix ];
  stylix.image = wallpaperPath;
  stylix.autoEnable = true;
  stylix.polarity = themeSettings.themePolarity;
  #stylix.base16Scheme = ".assets/theme/" + themeSettings.theme + ".yaml";
  #stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/" + themeSettings.theme + ".yaml";
  stylix.fonts = {
    
    serif = {
      name = "DejaVu Serif";
      package = pkgs.dejavu_fonts;
    };
    sansSerif = {
      name = "DejaVu Sans";
      package = pkgs.dejavu_fonts;
    };
    monospace = {
      name = "DejaVu Sans Mono";
      package = pkgs.dejavu_fonts;
    };
    emoji = {
      name = "Noto Color Emoji";
      package = pkgs.noto-fonts-emoji;
    };
    
  };
  
#  environment.sessionVariables = {
#    QT_QPA_PLATFORMTHEME = "qt5ct";
#  };
  
}
