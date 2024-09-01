{config, pkgs, lib, inputs, ...}:

{
  #home.packages = [ pkgs.udiskie ];  
  # automounter for udisks
  services.udiskie = {
    enable = true;
    notify = true;
    automount = true;
    settings = {
      program_options = {
        udisks_version = 2;
        tray = true;
      };
      icon_names.media = [ "media-optical" ];
    };
    
  };
  
}
