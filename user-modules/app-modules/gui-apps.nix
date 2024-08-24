{config, pkgs, lib, inputs, ...}:

{
  
  home.packages = with pkgs; [
    overskride # Bluetooth and Obex client
    swappy # Wayland native snapshot editing tool
    discord-screenaudio # A custom discord client that supports streaming with audio
    upscayl # Free and Open Source AI Image Upscaler
    chatterino2 # A chat client for Twitch chat
    qt5ct # Qt5 Configuration Tool
    qt6ct # Qt6 Configuration Tool
    transmission_4 # torrent client
    keepassxc # Offline password manager with many features
    webcord # A Discord and SpaceBar electron-based client implemented without Discord API
    qjackctl # Qjackctl, A Qt application to control the JACK sound server daemon
    inkscape
    obsidian
    gimp # The GNU Image Manipulation Program
    # ---- GIMP plugins ---- #
    gimpPlugins.gap # The GIMP Animation Package
    gimpPlugins.gmic # GIMP plugin for the G'MIC image processing framework
    gimpPlugins.bimp # Batch Image Manipulation Plugin for GIMP
    gimpPlugins.fourier # GIMP plug-in to do the fourier transform
    themix-gui # Graphical application for designing themes and exporting them using plugins
    gparted # Graphical disk partitioning tool
    qalculate-gtk # The ultimate desktop calculator
    trackma-gtk # Open multi-site list manager for Unix-like systems (ex-wMAL)
    pinta # Drawing/editing program modeled after Paint.NET
    # ---- Browsers ---- #
    floorp
    brave
  ];
  
}
