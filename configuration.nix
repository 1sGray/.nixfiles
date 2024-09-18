# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, inputs, themeSettings, userSettings,systemSettings, ... }:

{
  
  imports = [
    ./hardware-configuration.nix # Include the results of the hardware scan.

    # ./system-modules/hardware-modules/audio.nix
    # ./system-modules/hardware-modules/peripherals.nix
    # ./system-modules/system-users.nix
    # ./system-modules/networking.nix
    # ./system-modules/system-services.nix
    ./system-modules/security.nix
    # ./system-modules/system-themes.nix
];
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Flakes installation
  
  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use the GRUB EFI boot loader.
  # boot.loader.grub.enable = true;
  # boot.loader.grub.efiSupport = true;
  # boot.loader.grub.efiInstallAsRemovable = true;
  
  networking.hostName = lib.mkDefault "nixos"; # Define your hostname.
  users.users = lib.mkDefault {
   gray = {
    createHome = true;
    description = "Main personal user.";
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    group = "users";
    home = "/home/gray";
    shell = "pkgs.zsh";
    uid = 1000; 
  }

   # Timezone and locale
   # time.timeZone = systemSettings.timezone; # time zone
   # i18n.defaultLocale = systemSettings.locale;
   # i18n.extraLocaleSettings = {
   #   LC_ADDRESS = systemSettings.locale;
   #   LC_IDENTIFICATION = systemSettings.locale;
   #   LC_MEASUREMENT = systemSettings.locale;
   #   LC_MONETARY = systemSettings.locale;
   #   LC_NAME = systemSettings.locale;
   #   LC_NUMERIC = systemSettings.locale;
   #   LC_PAPER = systemSettings.locale;
   #   LC_TELEPHONE = systemSettings.locale;
   #   LC_TIME = systemSettings.locale;
   # };

  
  system.stateVersion = "24.05"; # Did you read the comment?
  
}
