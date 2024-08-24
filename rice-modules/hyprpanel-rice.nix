{config, pkgs, lib, inputs, themeSettings, ...}:

{
  
  imports = [
    ./hyprpanel-rice/hyprpanel.nix
    ./hyprpanel-rice/hypr-modules.nix
    ./hyprpanel-rice/ags.nix
    #./hyprpanel-rice/anyrun.nix
    ./hyprpanel-rice/stylix.nix
    ./hyprpanel-rice/keybindings.nix
  ];
  
  home.packages = with pkgs; [
    hyprpicker
    wl-clipboard-rs
    wl-clip-persist
    xdg-desktop-portal-hyprland
    grim
    slurp
    grimblast
    #gpu-screen-recorder
    #matugen
    #swww
    #dart-sass
    #gnome.gnome-bluetooth
    nerdfonts
  ];

  services.cliphist = {
    enable = true;
    allowImages = true;
  };
  
}
