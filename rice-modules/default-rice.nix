{config, pkgs, lib, inputs, themeSettings, ...}:

{
  
  imports = [
    ./default-rice/hypr-modules.nix
    ./default-rice/anyrun.nix
    ./default-rice/stylix.nix
    #./default-rice/hyprland-theme.nix
    ./default-rice/keybindings.nix
  ];
  
  # ---- Extra Packages ----   #
  home.packages = [
    pkgs.hyprpicker
    pkgs.wl-clipboard-rs
    pkgs.wl-clip-persist
    pkgs.grimblast
    pkgs.xdg-desktop-portal-hyprland
    pkgs.grim
    pkgs.slurp
  ];
  
  services.cliphist = {
    enable = true;
    allowImages = true;
    
    # Flags to append to the cliphist command.
    #extraOptions = [];
  };
  
#  programs.yazi.theme = {
#  # corresponds to theme.toml
#    filetype = {
#      rules = [
#        { fg = "#7AD9E5"; mime = "image/*"; }
#        { fg = "#F3D398"; mime = "video/*"; }
#        { fg = "#F3D398"; mime = "audio/*"; }
#        { fg = "#CD9EFC"; mime = "application/x-bzip"; }
#      ];
#    };
#  };
  
}
