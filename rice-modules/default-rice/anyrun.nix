
{config, pkgs, lib, inputs, ...}:

{
  
  imports = [ inputs.anyrun.homeManagerModules.default ];
  programs.anyrun = {
    enable = true;
    config = {
      plugins = [
        #inputs.anyrun.packages.${pkgs.system}.applications
        # comment to disable
        "${inputs.anyrun.packages.${pkgs.system}.anyrun-with-all-plugins}/lib/applications"
        "${inputs.anyrun.packages.${pkgs.system}.anyrun-with-all-plugins}/lib/dictionary"
        "${inputs.anyrun.packages.${pkgs.system}.anyrun-with-all-plugins}/lib/kidex"
        "${inputs.anyrun.packages.${pkgs.system}.anyrun-with-all-plugins}/lib/randir"
        "${inputs.anyrun.packages.${pkgs.system}.anyrun-with-all-plugins}/lib/rink"
        "${inputs.anyrun.packages.${pkgs.system}.anyrun-with-all-plugins}/lib/shell"
        "${inputs.anyrun.packages.${pkgs.system}.anyrun-with-all-plugins}/lib/stdin"
        "${inputs.anyrun.packages.${pkgs.system}.anyrun-with-all-plugins}/lib/symbols"
        "${inputs.anyrun.packages.${pkgs.system}.anyrun-with-all-plugins}/lib/translate"
        "${inputs.anyrun.packages.${pkgs.system}.anyrun-with-all-plugins}/lib/websearch"
        
      ];
    x = { fraction = 0.5; };
    y = { fraction = 0.3; };
    width = { fraction = 0.3; };
    hideIcons = false;
    ignoreExclusiveZones = false;
    layer = "overlay";
    hidePluginInfo = false;
    closeOnClick = false;
    #howResultsImmediately = true;
    maxEntries = null;
    };
#    extraCss = ''
#        .some_class {
#          background: red;
#        }
#    '';
#    extraConfigFiles."some-plugin.ron".text = ''
#        Config(
#          // for any other plugin
#          // this file will be put in ~/.config/anyrun/some-plugin.ron
#          // refer to docs of xdg.configFile for available options
#        )
#    '';
   };

  nix.settings = {
    builders-use-substitutes = true;
    # extra substititers to add
    extra-substituters = [ "https://anyrun.cachix.org" ];
    extra-trusted-public-keys = [
      "anyrun.cachix.org-1:pqBobmOjI7nKlsUMV25u9QHa9btJK65/C8vnO3p346s="
    ];
  
  };
  
}
