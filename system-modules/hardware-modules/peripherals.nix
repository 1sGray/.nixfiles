{config, pkgs, lib, inputs, ...}:

{
  
  # ----- PRINTING ----- #
  services.printing.enable = true;
  #services.avahi.enable = true;
  #services.avahi.nssmdns4 = true;
  #services.avahi.openFirewall = true;
  environment.systemPackages = [ pkgs.cups-filters ];
  # ----- ----- ----- #
  
  # ----- TouchPad ----- #
  services.libinput.enable = true; # Touchpad support
  # ----- ----- ----- #
  
}
