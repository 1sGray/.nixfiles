{config, pkgs, lib, inputs, systemSettings, userSettings, themeSettings, ...}: 

{

  wayland.windowManager.hyprland = {
    animations {
      enabled = true;
      # Animation curves
          
      "bezier" = "linear, 0, 0, 1, 1";
      "bezier" = "md3_standard, 0.2, 0, 0, 1";
      "bezier" = "md3_decel, 0.05, 0.7, 0.1, 1";
      "bezier" = "md3_accel, 0.3, 0, 0.8, 0.15";
      "bezier" = "overshot, 0.05, 0.9, 0.1, 1.1";
      "bezier" = "crazyshot, 0.1, 1.5, 0.76, 0.92";
      "bezier" = "hyprnostretch, 0.05, 0.9, 0.1, 1.0";
      "bezier" = "menu_decel, 0.1, 1, 0, 1";
      "bezier" = "menu_accel, 0.38, 0.04, 1, 0.07";
      "bezier" = "easeInOutCirc, 0.85, 0, 0.15, 1";
      "bezier" = "easeOutCirc, 0, 0.55, 0.45, 1";
      "bezier" = "easeOutExpo, 0.16, 1, 0.3, 1";
      "bezier" = "softAcDecel, 0.26, 0.26, 0.15, 1";
      "bezier" = "md2, 0.4, 0, 0.2, 1"; # use with .2s duration
      # Animation configs
      "animation" = "windows, 1, 3, md3_decel, popin 60%";
      "animation" = "windowsIn, 1, 3, md3_decel, popin 60%";
      "animation" = "windowsOut, 1, 3, md3_accel, popin 60%";
      "animation" = "border, 1, 10, default";
      "animation" = "fade, 1, 3, md3_decel";
      "animation" = "layers, 1, 2, md3_decel, slide";
      "animation" = "layersIn, 1, 3, menu_decel, slide";
      "animation" = "layersOut, 1, 1.6, menu_accel";
      "animation" = "fadeLayersIn, 1, 2, menu_decel";
      "animation" = "fadeLayersOut, 1, 4.5, menu_accel";
      "animation" = "workspaces, 1, 7, menu_decel, slide";
      # "animation" = "workspaces, 1, 2.5, softAcDecel, slide";
      # "animation" = "workspaces, 1, 7, menu_decel, slidefade 15%";
      # "animation" = "specialWorkspace, 1, 3, md3_decel, slidefadevert 15%";
      "animation" = "specialWorkspace, 1, 3, md3_decel, slidevert";

    };
  };

}
