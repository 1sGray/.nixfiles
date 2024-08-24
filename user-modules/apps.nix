{config, pkgs, lib, inputs, ...}:

{

  imports = [
  ./app-modules/terminal-apps.nix
  ./app-modules/tui-apps.nix
  ./app-modules/gui-apps.nix
  ];
  
  xdg.mimeApps = {
    enable = true;
#    defaultApplications = {
#    # default application to be used for a given mimetype
#      # Example "type" = [ "appliation entry" ];
#      "image" = [];
#      "audio" = [];
#      "video" = [];
#    };
  };
  
  
  programs.obs-studio = {
    enable = true;
    plugins = [
      pkgs.obs-studio-plugins.wlrobs
    ];
  };
  
  programs.sioyek = {
  # Sioyek, A PDF viewer designed for research papers and technical books
    enable = true;
    bindings = {
      "move_up" = "k";
      "move_down" = "j";
      "move_left" = "h";
      "move_right" = "l";
      "screen_down" = [ "d" "<c-d>" ];
      "screen_up" = [ "u" "<c-u>" ];
    };
  };
  programs.nheko = {
  # Nheko, Qt desktop client for Matrix
    enable = true;
    #settings = {}; # Only configure after login
  };
  
  programs.zathura = {
  # A highly customizable and functional document viewer focused on keyboard interaction
    enable = true;
  };
  #Portmaster
  #Bomi # video player
  # ----- ----- ----- #
  # ----- File Managers ----- #
  programs.joshuto = {
    enable = true;
    #theme = {};
    #settings = {};
    #keymap = {};
  };
  
  programs.yazi = {
    enable = true;
    package = pkgs.yazi;
    settings = {
      # corresponds to yazi.toml
      # Since Yazi selects the first matching key to run, prepend always has a higher priority than default, and append always has a lower priority than default:
      
      log = {
      enabled = false;
      };
      manager = {
        # Manager layout by ratio (x/8), 3-element array
        ratio = "[1,4,3]"; # 1/8 width for parent, 4/8 width for current, 3/8 width for preview
        
        show_hidden = true; # whether to Show hidden files
        show_symlink = true; # whether to Show the path of the symlink file point to, after the filename.
        
        sort_by = "modified";
        sort_dir_first = true;
        sort_reverse = true;
        
        # Display information associated with the file on the right side of the file list row.
        linemode = "size_and_mtime_and_permissions";
      };
      
#      preview = {
#        tab_size = ; # tab width
#        
#        # These values are also used for preloading images; the larger it is, the larger the image cache generated, which consumes more CPU
#        max_width = ; # Maximum preview width for images. Do a yazi --clear-cache to take effect after changing this
#        max_height = ; # Maximum preview height for images. Do a yazi --clear-cache to take effect after changing this
#        
#        image_filter = "triangle"; # The filter used on image downscaling
#        image_quality = 65; # Quality on pre-caching images, range 50-90
#      };
      
#      opener = {
#      # Configure available openers that can be used in [open]
#        edit = [
#          { run = 'nvim "$@"', block = true }
#        ];
#        
#        play = [
#          { run = 'mpv "$@"', orphan = true, for = "unix" }
#        ];
#        
#        open = [
#          { run = 'xdg-open "$@"', desc = "Open" }
#        ];
#      };
#      
#      open = {
#      # Set rules for opening specific files. You can prepend or append rules to the default through prepend_rules and append_rules
#        
#      };
      
    };
  };
  
  home.packages = with pkgs; [
  #Dua-cli
  #Nyaa
  #Tmlshock
  #Bookify
  #Toru
  #Connect-four-solver
  imagemagick7
  nsxiv
  # ---- Thunar ---- #
  xfce.thunar
  xfce.thunar-volman # Thunar extension for automatic management of removable drives and media
  xfce.thunar-archive-plugin # Thunar plugin providing file context menus for archives
  xfce.thunar-media-tags-plugin # Thunar plugin providing tagging and renaming features for media files
  
  ];
  
}
