{config, pkgs, lib, inputs, systemSettings, userSettings, home-manager, ...}:

{
  # ----- USERS ----- #
  
  # ---- Main User ---- #
  users.users.${userSettings.username} = {
    isNormalUser = true;
    description = userSettings.name;
    extraGroups = [ "wheel" "networkmanager" ];
    packages = [];
    uid = 1000;
  };
  
  # ---- Extra Users ---- #
  
  # ---- ---- ---- #
  
  time.timeZone = systemSettings.timezone; # time zone
  
}
