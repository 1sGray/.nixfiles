{config, pkgs, lib, inputs, userSettings, ...}:

{
  
  # ----- ACCOUNTS ----- #
  
  # ---- Email ---- #
  
  accounts.email.accounts = {
    
    default = {
      # Whether this is the primary account
      primary = true;
      # The email address of this account
      address = "${userSettings.email}";
      # Alternative email addresses of this account
      #aliases = "";
      # enable the Thunderbird mail client for this account
      thunderbird.enable = true;
      # List of Thunderbird profiles for which this account should be enabled
      thunderbird.profiles = [
        "default"
      ];
      
      signature = {
        # Method to communicate the signature, one of "append", "attach", "none"
        showSignature = "none";
        
        text = "
           --
           Luke Skywalker
           May the force be with you.
           
        ";
        
      };
      
    };
  };
  
  # Email client, Thunderbird
 # programs.thunderbird = {
 #   enable = true;
 #   settings = {};
 #   profiles = {
 #   
 #     default = {
 #       
 #       name = "${userSettings.username}";
 #       isDefault = true;
 #       settings = {};
 #       extraConfig = { "" };
 #       
 #       # Custom Thunderbird user content CSS
 #       #userContent = { "" };
 #       
 #       # Allow using external GPG keys with GPGME
 #       withExternalGnupg = false;
 #     };
 #   };
 # };
  
  # ---- ---- ---- #
  
  # ----- ----- ----- #
  
}
