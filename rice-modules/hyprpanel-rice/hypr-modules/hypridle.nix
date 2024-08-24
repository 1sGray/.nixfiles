{config, pkgs, lib, inputs, systemSettings, userSettings, themeSettings, ...}:

{
  
  services.hypridle = {
    enable = true;
    settings = {
      # example from mynixos.com (modified)
      
      general = {
      after_sleep_cmd = "hyprctl dispatch dpms on";
      ignore_dbus_inhibit = false;
      lock_cmd = "hyprlock";
      };
      
      listener = [
        
        {
          timeout = 800; # 2.5min.
          on-timeout = "brightnessctl -sd rgb:kbd_backlight set 0"; # turn off keyboard backlight.
          on-resume = "brightnessctl -rd rgb:kbd_backlight"; # turn on keyboard backlight
        }
        
        {
          timeout = 1000;
          on-timeout = "hyprctl dispatch dpms off";
          on-resume = "hyprctl dispatch dpms on";
        }
        
        {
          timeout = 1200;
          on-timeout = "hyprlock";
        }
        
      ];
    
    };
  };
  
}