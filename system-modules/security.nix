{config, pkgs, lib, inputs, userSettings, ...}:

{
  
  # ----- DOAS ----- #
  security.doas.enable = true;
  security.sudo.enable = false;
  security.doas.extraRules = [{
    users = [ "${userSettings.username}" ];
    keepEnv = true;
    persist = true;
  }];
  
  environment.systemPackages = [
    (pkgs.writeScriptBin "sudo" ''exec doas "$@"'') # Replaces 'sudo' with 'doas' when invoked
  # ----- ----- ----- #
    pkgs.polkit-kde-agent
  
  ];
  
  # ----- GPG ----- #
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
  # ----- ----- ----- #
  
  # ----- SSH ----- #
  # Enable incoming ssh
  services.openssh = {
    enable = true;
    openFirewall = true;
    settings = {
      PasswordAuthentication = false;
      PermitRootLogin = "no";
    };
  };
  # ----- ----- ----- #
  
  security.polkit.enable = true;
  security.polkit.debug = true;
}
