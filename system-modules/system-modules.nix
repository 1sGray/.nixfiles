{config, pkgs, lib, inputs, userSettings, ...}:

{
  imports = [
    # Add the paths to the nixModules system modules here ->
    # Example: ./sh.nix #
    
    ./system-users.nix
    ./hardware-modules/power.nix
    ./hardware-modules/graphics.nix
    ./hardware-modules/audio.nix
    ./hardware-modules/peripherals.nix
    ./networking.nix
    ./system-services.nix
    ./security.nix
    ./system-themes.nix
    
  # <-
  ];
}
