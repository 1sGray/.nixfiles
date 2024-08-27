{config, pkgs, inputs, systemSettings, userSettings, themeSettings, ...}:

{
      
  home.username = userSettings.username;
  home.homeDirectory = "/home/" + userSettings.username;
  
  programs.home-manager.enable = true;
  home.stateVersion = "24.05"; # Please read the comment before changing.
  
  imports = [
    ./user-modules/user-modules.nix

    # ----- RICES ----- #
    #Sets up the Desktop environment and Customisation
    # uncomment one, comment the rest
    ./rice-modules/default-rice.nix # Default Rice
    #./rice-modules/hyprpanel-rice.nix # HyprPanel by
  ];
  
}
