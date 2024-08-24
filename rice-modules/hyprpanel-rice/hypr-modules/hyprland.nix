{config, pkgs, lib, inputs, systemSettings, userSettings, themeSettings, ...}:

{
  
  wayland.windowManager.hyprland = {
    enable = true;
    #package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    
    systemd = {
      enable = true;  # Whether to enable 'hyprland-session.target' on hyprland startup
      enableXdgAutostart = true; 
      variables = ["--all"]; 
      extraCommands = [
        #"systemctl --user stop hyprland-session.target"
        "systemctl --user start hyprland-session.target"
      ];
    };
    
    settings = {
#      input = {
#        kb_layout = "us,ar";
#        kb_variant = ",qwerty";
#        kb_options = [  "grp:alt_shift_toggle"  "caps:swapescape" ];
#      };
      "$terminal" = "kitty";
      "$menu" = "anyrun";
      monitor = "DP-1,preferred,auto,auto"; # Monitors as (monitor=DP-number,resolution,position,scale)
      
      # ---- Animations ---- #
      #animation = "workspaces,1,8,default";
      #animation = "windows,1,10,myepiccurve,slide";
      #animation = "fade,0";
      
      env = [ "XDG_CURRENT_DESKTOP,Hyprland" "XDG_SESSION_TYPE,wayland"  "XDG_SESSION_DESKTOP,Hyprland" ];
      
      
    };
      
    extraConfig = 
    # Extra configuration lines to add to the generated hyprland.conf
      "
        #exec-once = ags
        exec-once = hyprpanel
        exec-once = udiskie
        
        exec-once = wl-paste --type text --watch cliphist store #Stores only text data
        
        exec-once = wl-paste --type image --watch cliphist store #Stores only image data
      ";
      
    plugins = [
    ];
    
    xwayland.enable = true; # Whether to enable XWayland (Default: true)
    
  };
  
}
