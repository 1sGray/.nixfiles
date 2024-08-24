{config, pkgs, lib, inputs, ...}:
let
  
  general = {
    lockScreen = ["SUPER,L,exec,hyprlock"];
    refresh = ["SUPER,F5,forcerendererreload,"];
    screenshot = [];
    terminal = ["SUPER,Return,exec,kitty"]; # Open selected terminal
  };
  
  launcher = {
    app = ["SUPER,space,exec,anyrun"];
    emoji = [];
    search = [];
    lookup = [];
    calculate = [];
    definition = [];
    clipboard = [];
  };
  
  window = {
    close = [
      "SUPER,Q,killactive,"
      "Alt,F4,killactive,"
    ];
    fullscreen = [",F11,fullscreen,0"];
    fullscreenWindowed = ["SUPER,E,fullscreen,1"];
    center = ["SUPER,W,centerwindow,"];
    toggleFloat = ["SUPER,F,togglefloating,active"];
    toggleOpaque = ["SUPER,C,toggleopaque,"];
    changeFocusDirection = [
      # Change window focus 
      "SUPER,K,movefocus,u" # up
      "SUPER,J,movefocus,d" # down
      "SUPER,H,movefocus,l" # left
      "SUPER,L,movefocus,r" # right
      "SUPER,up,movefocus,u" # up
      "SUPER,down,movefocus,d" # down
      "SUPER,left,movefocus,l" # left
      "SUPER,right,movefocus,r" # right
    ];
    changeFocusCycle = {
      next = ["SUPER,Tab,cyclenext,"];
      previous = ["SUPER,Shift_L&Tab,cyclenext,prev"];
    };
    moveFocused = [
      "SUPER_CONTROL,Shift_L&K,movewindow,u"
      "SUPER_CONTROL,Shift_L&J,movewindow,d"
      "SUPER_CONTROL,Shift_L&H,movewindow,l"
      "SUPER_CONTROL,Shift_L&L,movewindow,r"
      "SUPER_CONTROL,Shift_L&up,movewindow,u"
      "SUPER_CONTROL,Shift_L&down,movewindow,d"
      "SUPER_CONTROL,Shift_L&left,movewindow,l"
      "SUPER_CONTROL,Shift_L&right,movewindow,r"
    ];
    swapDirection = [ 
      "SUPER,CONTROL&K,swapwindow,u" # up
      "SUPER,CONTROL&J,swapwindow,d" # down
      "SUPER,CONTROL&H,swapwindow,l" # left
      "SUPER,CONTROL&L,swapwindow,r" # right
      "SUPER,CONTROL&up,swapwindow,u" # up
      "SUPER,CONTROL&down,swapwindow,d" # down
      "SUPER,CONTROL&left,swapwindow,l" # left
      "SUPER,CONTROL&right,swapwindow,r" # right
    ];
  };
  
  workspace = {
    switchWorkspace = [
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
    ];
    takeTo = [
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
    ];
    sendTo = [
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
    ];
  };
  
  scratchpad = {
    static = {
      terminal = ["SUPER,S&Return,togglespecialworkspace,special:term"];
      email = ["SUPER,S&Return,togglespecialworkspace,special:thunderbird"];
      fileManager = ["SUPER,S&Return,togglespecialworkspace,special:yazi"];
    };
    dynamic = {
      toggle = ["SUPER,S,togglespecialworkspace"];
      switch = [];
      takeTo = ["SUPER,,movetoworkspace,special"];
      sendTo = ["SUPER,,movetoworkspacesilent,special"];
      kickOff = [];
    };
  };
  
in
{
  
  wayland.windowManager.hyprland.settings = {
    # Keybind format: bind = "MOD,Key,dispatcher,variable"
    bind = [
      #launcher.app; # Open applauncher #
      #launcher.emoji; # Open Emoji
      #launcher.search; # Open search
      #launcher.lookup; # Open lookup
      #launcher.calculate; # Open calculate
      #launcher.definition; # Open definition
      #launcher.history; # Open clipboard history
      general.lockScreen; # Lock screen
      general.refresh; # Refresh Hyprland
      general.screenshot# Screenshot
      window.close; # close focused window
      window.center; # Center focused window
      window.fullscreen; # Fullscreen focused window
      window.fullscreenWindowed; # Fullscreen (Windowed) focused window
      window.toggleFloat; # Tile or Float focused window
      window.toggleOpaque; # Toggle focused window's opacity
      workspace.switchWorkspace; # Switch Workspace to (1~0)
      scratchpad.dynamic.toggle; # Open/Close Scratchpad
      #scratchpad.dynamic.switch; # Switch tab
      scratchpad.dynamic.takeTo; # Take window to scratchpad (move + open)
      scratchpad.dynamic.sendTo; # Send window to scratchpad (move)
      #scratchpad.dynamic.kickOff; # Kick window off scratchpad
    ];
    binds = [
      window.changeFocusDirection; # change window focus (To Direction)
      window.changeFocusCycle.next; # change window focus (Next)
      window.changeFocusCycle.previous; # change window focus (Previous)
      window.swapDirection; # Swap focused window's place with another
      window.moveFocused; # Move focused window
      workspace.takeTo; # Take window to Workspace (1~0)
      workspace.sendTo; # Send window to workspace(1~0)
      #workspace.static.terminal; # Terminal Scratchpad
      #workspace.static.fileManager; # Filemanager Scratchpad
      #workspace.static.email; # Mail Scratchpad
    ];
  };
  
}