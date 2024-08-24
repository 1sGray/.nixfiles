{config, pkgs, lib, inputs, systemSettings, userSettings, themeSettings, ...}:

{
  
  programs.hyprlock = {
    enable = true;
    settings = {
    # Example from mynixos.com (modified)
      
      general = {
        disable_loading_bar = true; # disables the loading bar on the bottom of the screen while hyprlock is booting up
        grace = 15; # the amount of seconds for which the lockscreen will unlock on mouse movement
        hide_cursor = true; # hides the cursor instead of making it visible
        no_fade_in = false; # disables the fadeout animation
      };
      
      background = [
      # draws a background image or fills with color
        {
          monitor = ""; # empty sets to all monitor
          path = "/~/.nixfiles/assets/${themeSettings.wallpaper}";
          color = "rgba(25, 20, 20, 1.0)"; # use of you want a solid color
          blur_passes = 3; # 0 disables blurring
          blur_size = 8;
          shadow_passes = 0; # passes for shadow, 0 to disable
          shadow_size = 3; # size for shadow
          shadow_color = "rgb(0,0,0)";
          shadow_boost = 1.2; # boost shadows opacity
        }
      ];
      
      image = [
        {
          monitor = ""; # empty sets to all monitor
          path = "/~/.nixfiles/assets/${themeSettings.profilePic}"; # use absolute path
          size = 150; # lesser side if not 1:1 ratio
          rounding = -1; # negative values mean circle
          border_size = 4;
          border_color = "rgb(221, 221, 221)";
          reload_time = -1; # seconds between reloading, 0 to reload with SIGUSR2
          position = "0, 200";
          #halign = "center";
          #valign = "center";
          shadow_passes = 0; # passes for shadow, 0 to disable
          shadow_size = 3; # size for shadow
          shadow_color = "rgb(0,0,0)";
          shadow_boost = 1.2; # boost shadow’s opacity
        }
      ];
      
      input-field = [
        {
          monitor = "";
          size = "200, 50";
          position = "0, -80";
          #halign = "center";
          #valign = "center";
          dots_center = true;
          dots_size = 0.33; # Scale of input-field height, 0.2 - 0.8
          dots_spacing = 0.15; # Scale of dots' absolute size, 0.0 - 1.0
          fade_on_empty = false;
          fade_timeout = 1000; # Milliseconds before fade_on_empty is triggered
          font_color = "rgb(202, 211, 245)";
          inner_color = "rgb(91, 96, 120)";
          outer_color = "rgb(24, 25, 38)";
          check_color = "rgb(204, 136, 34)";
          fail_color = "rgb(204, 34, 34)"; # if authentication failed, changes outer_color and fail message color
          fail_transition = 300; # transition time in ms between normal outer_color and fail_color
          outline_thickness = 5;
          #placeholder_text = '\'<span foreground="##cad3f5">Input Password...</span>'\'; # Text rendered in the input box when it's empty
          #fail_text = '\'<span>Password Failed</span>'\'; # can be set to empty
          shadow_passes = 2; # passes for shadow, 0 to disable
          shadow_size = 3; # size for shadow
          shadow_color = "rgb(0,0,0)";
          shadow_boost = 1.2; # boost shadow’s opacity
          capslock_color = -1; # -1 means don't change outer color
          numlock_color = -1; # -1 means don't change outer color
        }
      ];
    };
    
    # Extra configuration lines to add to the generated hyprlock.conf
    extraConfig =
      "
        
      ";
  };
  
}