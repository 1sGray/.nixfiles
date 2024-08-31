{config, pkgs, lib, inputs, systemSettings, userSettings, themeSettings, ...}:

{
  
  services.hypridle = {
    enable = true;
    settings = {
      # example from mynixos.com (modified)
      
      general = {
        before_sleep_cmd = "loginctl lock-session"; # lock before suspend.
        after_sleep_cmd = "hyprctl dispatch dpms on"; # to avoid having to press a key twice to turn on the display
        ignore_dbus_inhibit = false;
        lock_cmd = "pidof hyprlock || hyprlock"; # avoid starting multiple hyprlock instances
      };
      
      listener = [
        
        {
          timeout = 540; # 2.5min.
          on-timeout = "brightnessctl -sd rgb:kbd_backlight set 0"; # turn off keyboard backlight.
          on-resume = "brightnessctl -rd rgb:kbd_backlight"; # turn on keyboard backlight
        }
        
        {
          # DPMS TIMEOUT
          timeout = 660;
          # DPMS ONTIMEOUT
          on-timeout = "hyprctl dispatch dpms off";
          # DPMS ONRESUME
          on-resume = "hyprctl dispatch dpms on";
        }
        
        {
          # HYPRLOCK TIMEOUT
          timeout = 600;
          # HYPRLOCK ONTIMEOUT
          on-timeout = "loginctl lock-session";
        }

        {
          # SUSPEND TIMEOUT
          #timeout = 0;
          #SUSPEND ONTIMEOUT
          # on-timeout = "systemctl suspend";
        }
        
      ];
    
    };
  };
  
}
