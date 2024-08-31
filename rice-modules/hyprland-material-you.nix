{config, pkgs, lib, inputs, themeSettings, ...}:

{
  
  imports = [ 
    ./hyprland-material-you/ags.nix
    ./hyprland-material-you/hypr-moduled.nix
    ./hyprland-material-you/stylix.nix
    ./hyprland-material-you/keybinds.nix
  ];
  home.package = with pkgs [
    wl-clipboard-rs
    material-icons
    material-symbols
    material-cursors
    python312Packages.materialyoucolor
    python312Packages.pyxdg
    python312Packages.pip # PyPA recommended tool for installing Python packages
    python312Packages.pillow # Friendly PIL fork (Python Imaging Library)
    python312Packages.pywayland # Python bindings to wayland using cffi
    python312Packages.requests
    python312Packages.numpy
    blueman
    gtk3
    gtk4
    adw-gtk3
    libdbusmenu-gtk3
    pavucontrol
    swappy
    gnome.gnome-bluetooth
    gnome.gvfs
    gnome.gnome-system-monitor
    cliphist
    libadwaita
    nwg-look
    polkit-gnome
    xarchiver
    zip
    cpio
    imagemagick
    bibata-cursors
    gum
    libdrm
    fwupd
    bun
    lm_sensors # Tools for reading hardware sensors
    playerctl
    dart-sass
    gtksourceview
    meson
    cmake
    gtksourceviewmm
    cairomm
    gtkmm3
    tinyxml-2
    # Fonts #
    nerdfonts
    roboto
    fontconfig

    papirus-icon-theme
    vencord
    webcord-vencord
    vencord-web-extension
  ];
  
  home.shellAliases = {
    "hmy-set-colors" = "python -O $HOME/dotfiles/material-colors/generate.py --color "#0000FF" ";
  };

  # Adds a symlink in home as ~/dotfiles
  home.file.dotfiles.source = config.lib.file.mkOutOfStoreSymlink ./hyprland-material-you/dotfiles;

}
