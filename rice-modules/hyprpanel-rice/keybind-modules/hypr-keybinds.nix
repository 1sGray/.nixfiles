{config, pkgs, lib, inputs, ...}:

{
  
  wayland.windowManager.hyprland.settings = {
    # Keybind format: bind = "MOD,Key,dispatcher,variable"
    # ---- General ---- #
    bind = [
     "SUPER,Return,exec,kitty" # Open selected terminal
     
      # --- Launcher --- #
      
      # Open applauncher #
      "SUPER,space,exec,anyrun"
      
      # Open Emoji
      
      # Open search
      
      # Open lookup
      
      # Open calculate
      
      # Open definition
      
      # Open clipboard history
      
      # Lock screen
      "SUPER,L,exec,hyprlock"
      
      # Refresh Hyprland
      "SUPER,F5,forcerendererreload,"
      
      # Screenshot
      #""
      # ---- Window ---- #
      # close focused window
      "SUPER,Q,killactive,"
      "Alt,F4,killactive,"
      
      # Center focused window
      "SUPER,W,centerwindow,"
      
      # Fullscreen focused window
      ",F11,fullscreen,0"
      
      # Fullscreen (Windowed) focused window
      "SUPER,E,fullscreen,1"
      
      # Tile or Float focused window
      "SUPER,F,togglefloating,active"
      
      # Toggle focused window's opacity
      "SUPER,C,toggleopaque,"
      
      # Change window focus 
      "SUPER,Tab,cyclenext," # next
      "SUPER,K,movefocus,u" # up
      "SUPER,J,movefocus,d" # down
      "SUPER,H,movefocus,l" # left
      "SUPER,L,movefocus,r" # right
      "SUPER,up,movefocus,u" # up
      "SUPER,down,movefocus,d" # down
      "SUPER,left,movefocus,l" # left
      "SUPER,right,movefocus,r" # right
      
      # ---- Workspaces ---- #
      # Switch Workspace to (1~0)
      "SUPER,1,workspace,1"
      "SUPER,2,workspace,2"
      "SUPER,3,workspace,3"
      "SUPER,4,workspace,4"
      "SUPER,5,workspace,5"
      "SUPER,6,workspace,6"
      "SUPER,7,workspace,7"
      "SUPER,8,workspace,8"
      "SUPER,9,workspace,9"
      "SUPER,0,workspace,10"
      
      # ---- Dynamic Scratchpad setup ---- #
      # Open/Close Scratchpad
      "SUPER,S,togglespecialworkspace"
      
      # Switch tab
      #""
      
      # Take window to scratchpad (move + open)
      "SUPER,,movetoworkspace,special"
      
      # Send window to scratchpad (move)
      "SUPER,,movetoworkspacesilent,special"
      
      # Kick window off scratchpad
      #""
      
    ];
    binds = [
      # change window focus
      "SUPER,Shift_L&Tab,cyclenext,prev" # previous   
      
      # Swap focused window's place with another
      "SUPER,Control_L&K,swapwindow,u" # up
      "SUPER,Control_L&J,swapwindow,d" # down
      "SUPER,Control_L&H,swapwindow,l" # left
      "SUPER,Control_L&L,swapwindow,r" # right
      "SUPER,Control_L&up,swapwindow,u" # up
      "SUPER,Control_L&down,swapwindow,d" # down
      "SUPER,Control_L&left,swapwindow,l" # left
      "SUPER,Control_L&right,swapwindow,r" # right
      
      # Move focused window
      "SUPER&Control_L,Shift_L&K,movewindow,u"
      "SUPER&Control_L,Shift_L&J,movewindow,d"
      "SUPER&Control_L,Shift_L&H,movewindow,l"
      "SUPER&Control_L,Shift_L&L,movewindow,r"
      "SUPER&Control_L,Shift_L&up,movewindow,u"
      "SUPER&Control_L,Shift_L&down,movewindow,d"
      "SUPER&Control_L,Shift_L&left,movewindow,l"
      "SUPER&Control_L,Shift_L&right,movewindow,r"
      
      # ---- Workspaces ---- #
      # Take window to Workspace (1~0)
      "SUPER,Shift_L&1,movetoworkspace,1"
      "SUPER,Shift_L&2,movetoworkspace,2"
      "SUPER,Shift_L&3,movetoworkspace,3"
      "SUPER,Shift_L&4,movetoworkspace,4"
      "SUPER,Shift_L&5,movetoworkspace,5"
      "SUPER,Shift_L&6,movetoworkspace,6"
      "SUPER,Shift_L&7,movetoworkspace,7"
      "SUPER,Shift_L&8,movetoworkspace,8"
      "SUPER,Shift_L&9,movetoworkspace,9"
      "SUPER,Shift_L&0,movetoworkspace,10"
      
      # Send window to workspace(1~0)
      "SUPER,Alt_L&1,movetoworkspacesilent,1"
      "SUPER,Alt_L&2,movetoworkspacesilent,2"
      "SUPER,Alt_L&3,movetoworkspacesilent,3"
      "SUPER,Alt_L&4,movetoworkspacesilent,4"
      "SUPER,Alt_L&5,movetoworkspacesilent,5"
      "SUPER,Alt_L&6,movetoworkspacesilent,6"
      "SUPER,Alt_L&7,movetoworkspacesilent,7"
      "SUPER,Alt_L&8,movetoworkspacesilent,8"
      "SUPER,Alt_L&9,movetoworkspacesilent,9"
      "SUPER,Alt_L&0,movetoworkspacesilent,10"
      
      # --- Static Scratchpad setup --- #
      # Terminal Scratchpad
      #"SUPER,S&Return,togglespecialworkspace,special:term"
      
      # Filemanager Scratchpad
      #"SUPER,S&Return,togglespecialworkspace,special:yazi"
      
      # Mail Scratchpad
      #"SUPER,S&Return,togglespecialworkspace,special:thunderbird"
    ];
  };
  
}