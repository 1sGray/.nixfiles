{config, pkgs, lib, inputs, ...}:

{
  
  #services.journald.extraConfig = "SystemMaxUse=50M\nSystemMaxFiles=5";
  #services.journald.rateLimitBurst = 500;
  #services.journald.rateLimitInterval = "30s";
  
  services.udisks2 = {
    enable = true;
    mountOnMedia = true;
  };
  
  programs.dconf.enable = true;
  
  # ---- DISPLAY MANAGER ---- #
  services.greetd = {
    enable = true;
    restart = true; # whether to restart greetd on failure, should be disabled when autologin is on
    settings = {
      default_session = {
        command = "${pkgs.greetd.greetd}/bin/agreety --cmd hyprland";
      };
    };
  };
   
}
