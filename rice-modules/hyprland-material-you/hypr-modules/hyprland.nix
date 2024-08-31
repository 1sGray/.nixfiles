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
      source = "~/.cache/material/colors-hyprland.conf";

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
      
      env = [ "XDG_CURRENT_DESKTOP,Hyprland" "XDG_SESSION_TYPE,wayland"  "XDG_SESSION_DESKTOP,Hyprland" "QT_QPA_PLATFORM,wayland;xcb" "QT_WAYLAND_DISABLE_WINDOWDECORATION,1" "QT_AUTO_SCREEN_SCALE_FACTOR,1" "QT_QPA_PLATFORMTHEME,qt5ct" "MOZ_ENABLE_WAYLAND,1" "GDK_SCALE,1" "SDL_VIDEODRIVER,wayland" "ELECTRON_ENABLE_WAYLAND, 1" "ELECTRON_OZONE_PLATFORM_HINT, wayland"];
      
      general = {
        gaps_in = 5;
        gaps_out = 14;
        border_size = 0;
        "col.active_border" = "$border_color_active"
        "col.inactive_border" = "$border_color_inactive"
        layout = dwindle;
      };

      decoration= {
        rounding = 20;
        blur = {
          enabled = false;
        };
        active_opacity = 1;
        inactive_opacity = 1;
        fullscreen_opacity = 1;

        drop_shadow = true;
        shadow_range = 10;
        shadow_render_power = 3;
        "col.shadow" = "0x66000000";
      };
      
      dwindle {
        pseudotile = true;
        preserve_split = true;
      };

      master {
        smart_resizing = true;
        new_on_active = true;
        drop_at_cursor = true;
      };

      gestures {
        workspace_swipe = true;
        workspace_swipe_distance = 700;
        workspace_swipe_fingers = 4;
        workspace_swipe_cancel_ratio = 0.2;
        workspace_swipe_min_speed_to_force = 5;
        workspace_swipe_direction_lock = true;
        workspace_swipe_direction_lock_threshold = 10;
        workspace_swipe_create_new = true;
      };

      misc {
        vfr = 1;
        vrr = 1;
        # layers_hog_mouse_focus = true
        animate_manual_resizes = false;
        animate_mouse_windowdragging = false;
        enable_swallow = false;
        swallow_regex = "(foot|kitty|allacritty|Alacritty)";
        disable_splash_rendering = true;
        
        disable_hyprland_logo = true;
        force_default_wallpaper = 0;
        new_window_takes_over_fullscreen = 2;
        allow_session_lock_restore = true;
        
        initial_workspace_tracking = false;
      };
    };
      
    extraConfig = 
    # Extra configuration lines to add to the generated hyprland.conf
      "
        #exec-once = ags
        exec-once = hyprpanel
        exec-once = udiskie
        exec-once = ~/dotfiles/hypr/scripts/xdg.sh # Setup XDG
        exec-once = /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 # Start Polkit
        exec-once = hypridle # Using hypridle to start hyprlock
        exec-once = nm-applet --indicator # start network manager applet
        exec-once = blueman-applet # start blueman applet
        exec-once = wl-paste --watch cliphist store # # Load cliphist history
        #exec-once = ~/dotfiles/hypr/scripts/init-wallpaper-engine.sh # Initialize Wallpaper Engine
        #exec-once = easyeffects --gapplication-service
        exec-once = ags # start AGS


        exec-once = wl-paste --type text --watch cliphist store #Stores only text data
        
        exec-once = wl-paste --type image --watch cliphist store #Stores only image data
      ";
      
    plugins = [
    ];
    
    xwayland.enable = true; # Whether to enable XWayland (Default: true)
    
  };
  
}
