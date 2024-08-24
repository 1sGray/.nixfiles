{config, pkgs, lib, inputs, systemSettings, userSettings, ...}:

{
  imports = [
    # Add the relative paths to the home-manager user modules here ->
    # Example: ./sh.nix #
    
    ./sh.nix
    ./user-services.nix
    ./libraries.nix
    ./apps.nix
    ./games.nix
    ./git.nix
    ./containers.nix
    ./user.nix
    
    # <-
  ];
}
