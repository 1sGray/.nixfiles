{config, pkgs, lib, inputs, systemSettings, userSettings ,...}:

{
  
  networking.hostName = systemSettings.hostname; # Define your hostname.
  networking.networkmanager.enable = true; # Use networkmanager
  
  # ----- FIREWALL ----- 
  networking.firewall = {
    enable = false;
    # Open ports in the firewall.
    # allowedTCPPorts = [ ... ];
    # allowedUDPPorts = [ ... ];
    
    # Open port ranges in the firewall.
    # allowedTCPPortRanges = [ {from = 8999; to = 9003;} ];
    # allowedUDPPortRanges = [ {from = 60000; to = 61000;} ];
  };
  # ----- ----- ----- #
  
  # ----- BLUETOOTH ----- #
  hardware.bluetooth = {
    enable = true;
    package = pkgs.bluez;
    powerOnBoot = true; # Whether to power up the default Bluetooth controller on boot
    settings = {
    # Set configuration for system-wide bluetooth (/etc/bluetooth/main.conf)
    
    };
    
  };
  environment.systemPackages = with pkgs; [
    bluez-tools # set of tools to manage bluetooth devices (formerly bluez-utils)
  ];
  # ----- ----- ----- #
}
