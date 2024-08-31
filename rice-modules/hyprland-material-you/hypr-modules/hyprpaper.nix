{config, pkgs, lib, inputs, systemSettings, userSettings, themeSettings, ...}:

{
  
  services.hyprpaper = {
  # example from mynixos.com
    
    enable = lib.mkDefault true;
    package = pkgs.hyprpaper;
    settings = {
      
      ipc = "on"; # fully enable/disable ipc
      splash = true; # enable splash text rendering over the wallpaper
      splash_offset = 2.0; # text offset
      
      preload = [
      # load assets into memory on startup
      
        # add to list as absolute path(s) ("~/.nixfiles/user-modules/desktop/hypr/assets/wallpaper/<file>")
        "/~/.nixfiles/assets/${themeSettings.wallpaper}"
        
      ];
      
      wallpaper = [
      # set the default wallpaper(s) seen on initial workspace(s)
        # add to list as absolute path(s) ("DP-<monitor-number>,~/.nixfiles/user-modules/desktop/hypr/assets/wallpaper/<file>")
        ",/~/.nixfiles/assets/${themeSettings.wallpaper}" # empty monitor number applies to all monitors
      ];
      
    };
  };
  
}