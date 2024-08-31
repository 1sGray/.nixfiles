{config, pkgs, lib, inputs, ...}: let

  # Categories (for script)
  #! @actions: Actions
  #! @tools: Tools
  #! @apps: Applications
  #! @windows: Windows
  #! @workspaces: Workspaces
  #! @misc: Misc
  applications = {
    terminal = "$mainMod, RETURN, exec, $scriptsDir/apps.sh terminal"; #! @description: "Terminal"; @apps; (for bind)
    browser = "$mainMod, B, exec, $scriptsDir/apps.sh browser";  #! @description: "Browser"; @apps; (for bind)
    pamac-manager = "$mainMod, H, exec, pamac-manager"; #! @description: "Pamac-manager (if installed)"; @apps; (for bind)
    gnome-system-monitor = "$mainMod SHIFT, M, exec, gnome-system-monitor"; #! @description: "Gnome system monitor"; @apps; (for bind)
    file-manager = "$mainMod, E, exec, $scriptsDir/apps.sh filemanager"; #! @description: "File Manager"; @apps; (for bind)
  };
  
  windows = {
    close = "$mainMod, Q, killactive"; #! @description: "Close window"; @windows; (for bind)
    fullscreen = "$mainMod, F, fullscreen"; #! @description: "Open window in full screen mode"; @windows; (for bind)
    toggleFloat = "$mainMod, T, togglefloating"; #! @description: "Toggle floating"; @windows; (for bind)
    toggleFloatAll = "$mainMod SHIFT, T, exec, ~/dotfiles/hypr/scripts/toggleallfloat.sh"; #! @description: "Toggle all float windows"; @windows; (for bind)
    toggleSplit = "$mainMod, J, togglesplit"; #! @description: "Toggle split"; @windows; (for bind)
    moveLeft = "$mainMod, left, movefocus, l"; # (for bind)
    moveRight = "$mainMod, right, movefocus, r"; # (for bind)
    moveUp = "$mainMod, up, movefocus, u"; # (for bind)
    moveDown = "$mainMod, down, movefocus, d"; # (for bind)
    moveMouse = "$mainMod, mouse:272, movewindow"; # (for bindm)
    resizeMouse = "$mainMod, mouse:273, resizewindow"; # (for bindm)
    resizeRight = "$mainMod SHIFT, right, resizeactive, 100 0"; # (for bind)
    resizeLeft = "$mainMod SHIFT, left, resizeactive, -100 0"; # (for bind)
    resizeUp = "$mainMod SHIFT, up, resizeactive, 0 -100"; # (for bind)
    resizeDown = "$mainMod SHIFT, down, resizeactive, 0 100"; # (for bind)
    toggleGroup = "$mainMod, G, togglegroup"; #! @description: "Toggle group"; @windows; (for bind)
  };

  actions = {
    toggleAnimations = "$mainMod SHIFT, A, exec, ~/dotfiles/hypr/scripts/toggle-animations.sh"; #! @description: "Toggle animations"; @actions; (for bind)
    screenshot = "$mainMod SHIFT, S, exec, ~/dotfiles/hypr/scripts/screenshot.sh"; #! @description: "Screenshot"; @actions; (for bind)
    screenshotWindow = "$mainMod CTRL, S, exec, ~/dotfiles/hypr/scripts/screenshot.sh --window"; #! @description: "Window screenshot"; @actions; (for bind)
    screenshotActiveScreen = "$mainMod ALT, S, exec, ~/dotfiles/hypr/scripts/screenshot.sh --active"; #! @description: "Active screen screenshot"; @actions; (for bind)
    randowWallpaper = "$mainMod SHIFT, W, exec, python -O ~/dotfiles/hypr/scripts/wallpaper.py -R -n"; #! @description: "Random wallpaper"; @actions; (for bind)
    lockScreen = "$mainMod, L, exec, hyprlock"; #! @description: "Lock screen"; @actions; (for bind)
  };
  
  tools = {
  players = "$mainMod, Z, exec, ags -r "toggleMediaWindow()""; #! @description: "Players"; @tools; (for bind)
  emojiPicker = "$mainMod, period, exec, ags -r 'OpenEmojiPicker()'"; #! @description: "Emoji Picker"; @tools; (for bind)
  cliphist = "$mainMod CTRL, C, exec, ags -t cliphist"; # (for bind)
  clipboardHistory = "$mainMod, V, exec, ags -t cliphist"; #! @description: "Clipboard history"; @tools; (for bind)
  keybindList = "$mainMod, SLASH, exec, ags -t cheatsheet"; #! @description: "List of keybindings"; @tools; (for bind)
  changeWallpaper = "$mainMod CTRL, W, exec, ags -r "OpenSettings('wallpaper')""; #! @description: "Change wallpaper"; @tools; (for bind)
  appLauncher = "$mainMod, X, exec, ags -r "toggleAppsWindow()""; #! @description: "App Launcher"; @tools; (for bind)
  sidebar = "SUPER, SUPER_L, exec, ags -t sidebar"; #! @description: "Sidebar"; @tools; (for bind)
  };

  workspaces = {
    switchWorkspace = [
      "$mainMod, 1, workspace, 1" #! @description: "Switch workspace"; @workspaces; @replace "1" > "0-9"; (for bind)
      "$mainMod, 2, workspace, 2" # (for bind)
      "$mainMod, 3, workspace, 3" # (for bind)
      "$mainMod, 4, workspace, 4" # (for bind)
      "$mainMod, 5, workspace, 5" # (for bind)
      "$mainMod, 6, workspace, 6" # (for bind)
      "$mainMod, 7, workspace, 7" # (for bind)
      "$mainMod, 8, workspace, 8" # (for bind)
      "$mainMod, 9, workspace, 9" # (for bind)
      "$mainMod, 0, workspace, 10" # (for bind)
    ];
    moveToWorkspace = [
      "$mainMod SHIFT, 1, movetoworkspace, 1" #! @description: "Move window to workspace"; @workspaces; @replace "1" > "0-9"; (for bind)
      "$mainMod SHIFT, 2, movetoworkspace, 2" # (for bind)
      "$mainMod SHIFT, 3, movetoworkspace, 3" # (for bind)
      "$mainMod SHIFT, 4, movetoworkspace, 4" # (for bind)
      "$mainMod SHIFT, 5, movetoworkspace, 5" # (for bind)
      "$mainMod SHIFT, 6, movetoworkspace, 6" # (for bind)
      "$mainMod SHIFT, 7, movetoworkspace, 7" # (for bind)
      "$mainMod SHIFT, 8, movetoworkspace, 8" # (for bind)
      "$mainMod SHIFT, 9, movetoworkspace, 9" # (for bind)
      "$mainMod SHIFT, 0, movetoworkspace, 10" # (for bind)
    ];
    mouseWorkspaceDown = "$mainMod, mouse_down, workspace, e+1"; # (for bind)
    mouseWorkspaceUp = "$mainMod, mouse_up, workspace, e-1"; # (for bind)
    switchEmptyWorkspace = "$mainMod CTRL, down, workspace, empty"; #! @description: "Switch to empty workspace"; @workspaces; (for bind)
  };

  fn-keys = {
  brightnessUp = ", XF86MonBrightnessUp, exec, brightnessctl -q s +10%"; # (for bind)
  brightnessDown = ", XF86MonBrightnessDown, exec, brightnessctl -q s 10%-"; # (for bind)
  volumeUp = ", XF86AudioRaiseVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ +5%"; # (for bind)
  volumeDown = ", XF86AudioLowerVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ -5%"; # (for bind)
  muteAudio = ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"; # (for bind)
  play = ", XF86AudioPlay, exec, playerctl play-pause"; # (for bind)
  pause = ", XF86AudioPause, exec, playerctl pause"; # (for bind)
  next = ", XF86AudioNext, exec, playerctl next"; # (for bind)
  previous = ", XF86AudioPrev, exec, playerctl previous"; # (for bind)
  bindMic = ", XF86AudioMicMute, exec, pactl set-source-mute @DEFAULT_SOURCE@ toggle"; # (for bind)
  calculator = ", XF86Calculator, exec, qalculate-gtk"; # (for bind)
  lock = ", XF86Lock, exec, hyprlock"; # (for bind)
  settings = ", XF86Tools, exec, ags -r 'OpenSettings()'"; # (for bind)
  };

  misc = {
  vmPassthroughModKey = "$mainMod, P, submap, passthru"; #! @description: "Passthrough $mainMod key to Virtual Machine"; @misc; (for bind)
  passThoughSubmap = passthru; # (for submap)
  vmCancelSubmap = "SUPER, Escape, submap, reset"; #! @description: "Cancel passthrough"; @misc; (for bind)
  resetSubmap = reset; # (for submap)
  };

in
{
  
  wayland.windowManager.hyprland.settings = {
    # Keybind format: bind = "MOD,Key,dispatcher,variable"
    # ---- General ---- #
    # SUPER KEY
    "$mainMod" = "SUPER";
    "$scriptsDir" = "$HOME/dotfiles/hypr/scripts";

    bind = [
      applications.terminal;
      applications.browser;
      applications.pamac-manager;
      applications.gnome-system-monitor;
      applications.file-manager;

      windows.close;
      windows.fullscreen;
      windows.toggleFloat;
      windows.toggleFloatAll;
      windows.toggleSplit;
      windows.moveLeft;
      windows.moveRight;
      windows.moveUp;
      windows.moveDown;
      windows.moveMouse;
      windows.resizeMouse;
      windows.resizeRight;
      windows.resizeLeft;
      windows.resizeUp;
      windows.resizeDown;
      windows.toggleGroup;

      actions.toggleAnimations;
      actions.screenshot;
      actions.screenshotWindow;
      actions.screenshotActiveScreen;
      actions.randowWallpaper;
      actions.lockScreen;

      tools.players;
      tools.emojiPicker;
      tools.cliphist;
      tools.clipboardHistory;
      tools.keybindList;
      tools.changeWallpaper;
      tools.appLauncher;
      tools.sidebar;
        
      workspaces.switchWorkspace;
      workspaces.moveToWorkspace;
      workspaces.mouseWorkspaceDown;
      workspaces.mouseWorkspaceUp;
      workspaces.switchEmptyWorkspace;

      fn-key.brightnessUp;
      fn-key.brightnessDown;
      fn-key.volumeUp;
      fn-key.volumeDown;
      fn-key.muteAudio;
      fn-key.play;
      fn-key.pause;
      fn-key.next;
      fn-key.previous;
      fn-key.bindMic;
      fn-key.calculator;
      fn-key.lock;
      fn-key.settings;

    ];
    #binds = [];
    bindm = [
      windows.moveMouse;
      windows.resizeMouse;
    ];
    submap = [
      misc.passThoughSubmap;
      misc.resetSubmap;
    ];
  };
  
}
