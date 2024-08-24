{config, pkgs, lib, inputs, systemSettings, userSettings, ...}:

{
  
  program.ags = {
    enable = true;
    extraPackges = [ # additional packages to add to gjs's runtime
      pkgs.gtksourceview
      pkgs.webkitgtk
      pkgs.accountsservice
    ];
  };
  
}