{config, pkgs, lib, inputs, systemSettings, userSettings, themeSettin      gs, ...}:

{
  
  wayland.windowManager.hyprland = {

    # ######## Window rules ########
    "windowrule" = "tile,^(Microsoft-edge)$";
    "windowrule" = "tile,^(Brave-browser)$";
    "windowrule" = "tile,^(Chromium)$";
    "windowrule" = "float,^(blueman-manager)$";
    "windowrule" = "float, ^(blueberry.py)$";
    "windowrule" = "float,^(nm-connection-editor)$";
    "windowrule" = "float,^(qalculate-gtk)$";
    "windowrule" = "float, ^(steam)$";
    "windowrule" = "float, ^(com.github.Aylur.ags)$";
    "windowrulev2" = "stayfocused, title:^()$,class:^(steam)$";
    "windowrulev2" = "minsize 1 1, title:^()$,class:^(steam)$";
    "windowrule" = "center 1,floating:1";
    "windowrule" = "float,title:^(Volume Control)(.*)$";

    # Xwaylandvideobridge (if installed)
    "windowrulev2" = "opacity 0.0 override,class:^(xwaylandvideobridge)$";
    "windowrulev2" = "noanim,class:^(xwaylandvideobridge)$";
    "windowrulev2" = "noinitialfocus,class:^(xwaylandvideobridge)$";
    "windowrulev2" = "maxsize 1 1,class:^(xwaylandvideobridge)$";
    "windowrulev2" = "noblur,class:^(xwaylandvideobridge)$";
    
    # Dialogs
    "windowrule" = "float,title:^(Open File)(.*)$";
    "windowrule" = "float,title:^(Select a File)(.*)$";
    "windowrule" = "float,title:^(Choose wallpaper)(.*)$";
    "windowrule" = "float,title:^(Open Folder)(.*)$";
    "windowrule" = "float,title:^(Save As)(.*)$";
    "windowrule" = "float,title:^(Library)(.*)$";
    "windowrule" = "float,title:^(File Upload)(.*)$";

    # Tearing
    "windowrule" = "immediate,.*\.exe";
    "windowrulev2" = "immediate,class:(steam_app)455";
 
    # ######## Layer rules ########
    # layerrule = xray 1, .*
    # layerrule = noanim, .*
    "layerrule" = "noanim, walker";
    "layerrule" = "noanim, selection";
    "layerrule" = "noanim, overview";
    "layerrule" = "noanim, anyrun";
    "layerrule" = "noanim, popup.*";
    "layerrule" = "noanim, hyprpicker";

    "layerrule" = "noanim, noanim";
    "layerrule" = "blur, gtk-layer-shell";
    "layerrule" = "ignorezero, gtk-layer-shell";
    "layerrule" = "blur, launcher";
    "layerrule" = "ignorealpha 0.5, launcher";
    "layerrule" = "blur, notifications";
    "layerrule" = "ignorealpha 0.69, notifications";

    "layerrule" = "noanim, notifications";
    #windowrule = [];
    #windowrulev2 = [];
  };

}
