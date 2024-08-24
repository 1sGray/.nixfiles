
{config, pkgs, lib, inputs, ...}:

{
  
  
  # Mangohud, A Vulkan and OpenGL overlay for monitoring FPS, temperatures, CPU/GPU load and more
  programs.mangohud = {
    enable = true;
    
    settings = {
      output_folder = "~/Documents/mangohud/";
      full = true;
    };
    # Sets environment variables so that MangoHud is started on any application that supports it
    #enableSessionWide = false;
  };
  
  home.packages = with pkgs; [
    lutris # Open source gaming platform
    steam-tui # Rust TUI client for steamcmd
    cartridges # Cartridges, A GTK4 + Libadwaita game launcher
    steam
    #proton-ge-bin error: fucks with home managr drv
  ];
  
}
