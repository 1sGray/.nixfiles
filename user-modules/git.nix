{config, pkgs, lib, inputs, userSettings, ...}:

{
  
  #home.packages = [ pkgs.git ];
  programs.git ={
    enable = true;
    userName = userSettings.name;
    userEmail = userSettings.email;
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory = [
        ("/home/" + userSettings.username + "/.nixfiles")
        ("/home/" + userSettings.username + "/.nixfiles/.git")
      ];
    };
  };
  
}
