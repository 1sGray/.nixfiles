{config, pkgs, lib, inputs, ...}:

{
  
  home.packages = with pkgs; [
    
    gpg-tui
    figlet # Program for making large letters out of ordinary text
    ani-cli # A cli tool to browse and play anime
    musikcube # Terminal-based music player, library, and streaming audio server
    tomato-c # A pomodoro timer written in pure C
    gambit-chess # Play chess in your terminal
    charm-freeze # Generate images of code and terminal output
    steam-tui # Rust TUI client for steamcmd
    smassh # A TUI based typing test application inspired by MonkeyType
    axel
    aria2
    superfile
    
  ];
  
}
