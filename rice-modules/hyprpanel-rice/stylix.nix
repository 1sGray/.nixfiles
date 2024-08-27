{config, pkgs, lib, inputs, themeSettings, ...}:

let
  wallpaperPath = ../../assets/${themeSettings.wallpaper};
in

{
  
  imports = [ 
    inputs.stylix.homeManagerModules.stylix
  ];
 
  stylix = {
    enable = true;
    autoEnable = false; # weither to enable targets automatically
    
    image = wallpaperPath;
    #base16Scheme = "~/.nixfiles/assets/themes/" + userSettings.theme + ".yaml";
    #base16Scheme = "${pkgs.base16-schemes}/share/themes/" + userSettings.theme + ".yaml";
    polarity = themeSettings.themePolarity;
    
    fonts = {
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
      sizes = {
        terminal = 14;
        applications = 10;
        popups = 10;
        desktop = 10;
      };
    };
  };
  
  
}
