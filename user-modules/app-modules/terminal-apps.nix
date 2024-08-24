{config, pkgs, lib, inputs, ...}:

{
  
  programs.kitty = {
    enable = true;
    package = pkgs.kitty;
    
    settings = {
      scrollback_lines = 10000;
      enable_audio_bell = false;
      update_check_interval = 0;
    };
  };
  
  programs.tmux = {
    enable = true;
    package = pkgs.tmux;
    #plugins = [];
    shell = "${pkgs.zsh}/bin/zsh";
    historyLimit = 5000;
    extraConfig = "";
  };
  
}
