{config, pkgs, lib, inputs, ...}:

let
 
  # My shell aliases
  myAliases = {
    ls = "eza --icons -l -T -L=1";
    #cat = "bat";
    htop = "btop";
    #fd = "fd -Lu";
    #w3m = "w3m -no-cookie -v";
    #neofetch = "disfetch";
    #fetch = "disfetch";
    gitfetch = "onefetch";
    nxrbld-sf = "sudo nixos-rebuild switch --flake ~/.nixfiles";
    hm-sf = "home-manager switch --flake ~/.nixfiles"; 
    icat = "kitten icat";
  };

in
{
  
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;
    shellAliases = myAliases;
  };
  
  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = myAliases;
  };
  
  programs.starship = {
    enable = true;
    settings = {};
  };
  
  # ----- Cli Utilities ----- #
  home.packages = with pkgs; [
    tldr
    btop
    zoxide
    fzf
    eza
    ripgrep
    ripgrep-all
    entr
    mommy
    tesseract4
    onefetch
    trash-cli
    fastfetch
    ouch
    cbonsai
    lavat
    starfetch
  ];
  # ----- ----- ----- #
  
}
