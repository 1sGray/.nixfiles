{config, pkgs, lib, inputs, userSettings, ...}:

{
  
  home.packages = with pkgs; [
    hyprpanel
    #fish
    #typescript
    bun
    hyprpicker
    dart-sass
    #fd
    btop
    #bluez
    #bluez-tools
    grimblast
    matugen
    #swww
    gpu-screen-recorder
    brightnessctl
    gnome.gnome-bluetooth
  ];
  
#  wayland.windowManager.hyprland.settings.exec-once = ''
#      ${pkgs.hyprpanel}/bin/hyprpanel
#  '';
  
}
