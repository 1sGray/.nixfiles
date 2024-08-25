
{
  description = "my first flake based on LibrePhoenix's files (rev3.7)";
  
  outputs = { self, nixpkgs, home-manager, ... }@inputs: let
      
      # ---- THEME SETTINGS ---- #
      themeSettings = {
        theme = "gruvbox-dark-medium"; # selected theme from ./user-modules/themes
        themePolarity = "dark";
        wallpaper = "wallhaven-r28vlq.png"; # name of the image in .nixfiles/assets/
        profilePic = "love_my_music_by_kerochao.jpg"; # name of the image in .nixfiles/assets/
      };
      # ---- ---- ---- #
      
      # ---- USER SETTINGS ---- #
      userSettings = {
      
        username = "gray";
        name = "gray";
        email = "1s_gray@proton.me"; # used for certain configs (git, for example)
        dotfilesDir = "~/.nixfiles"; # absolute pathe of the local repo
        #theme = "gruvbox-dark-medium"; # selected theme from ./user-modules/themes
        #themePolarity = "dark";
        #wallpaper = "wallhaven-r28vlq.png"; # name of the image in .nixfiles/assets/
        #profilePic = "love_my_music_by_kerochao.jpg" # name of the image in .nixfiles/assets/

      };
      # ---- ---- ---- #
      
      # ---- SYSTEM SETTINGS ---- #
      systemSettings = {
      
        system = "x86_64-linux"; # system architecture
        hostname = "XJPC-LT";
        profile = "personal"; # select a profile defined in ./profiles
        timezone = "Asia/Dubai";
        locale = "en_US.UTF-8";
        bootMode = "uefi"; # uefi or bios
        bootMountPath = "/boot"; # mount path for efi boot partition; only used for uefi boot mode
        grubDevice = ""; # device identifier for grub; only used for legacy (bios) boot mode
        gpuType = "amd"; # amd, intel or nvidia; only makes some slight mods for amd at the moment

      };
      # ---- ---- ---- #
      
      lib = nixpkgs.lib;
      
      pkgs = import nixpkgs {
        system = systemSettings.system;
        config = { allowUnfree = true; };
        
        
        overlays = [
          inputs.hyprpanel.overlay.${systemSettings.system}
        ];
      };
             
    in {
      
      nixosConfigurations = {
        
        ${systemSettings.hostname} = lib.nixosSystem {
          
          system = systemSettings.system;
          specialArgs = { 
           inherit inputs;
           inherit systemSettings;
           inherit userSettings;
           inherit themeSettings;
          };
          modules = [ 
            # NixOS Modules
            ./configuration.nix
          ];
          
        };
       
      };
      
      homeConfigurations = {
        ${userSettings.username} = home-manager.lib.homeManagerConfiguration {
          
          inherit pkgs;
          extraSpecialArgs = {
            inherit inputs;
            inherit systemSettings;
            inherit userSettings;
            inherit themeSettings;
          };
          modules = [
            # Home-manager Modules
            ./home.nix
          ];
        
        };
        
      };
    };
    
  inputs = {
      
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; # Nix packages channel
    
    # ----- GITHUB REPO FLAKES ----- #
    
    home-manager = {
      url = "github:nix-community/home-manager"; # Home manager repo channel
      inputs.nixpkgs.follows = "nixpkgs"; # makes home manager follow nixpkgs's channel
    };
    
    # import Anyrun flake #
    anyrun.url = "github:anyrun-org/anyrun";
    anyrun.inputs.nixpkgs.follows = "nixpkgs";
    hyprpanel.url = "github:Jas-SinghFSU/HyprPanel";
    stylix.url = "github:danth/stylix"; # import Stylix flake
    ags.url = "github:Aylur/ags"; # import ags flake
    rose-pine-hyprcursor.url = "github:ndom91/rose-pine-hyprcursor"; # Hyprcursor reformatted Rose Pine theme
    
    # import Minecraft GRUB theme #
    minegrub-world-sel-theme.url = "github:Lxtharia/minegrub-world-sel-theme";
    # ----- ----- ----- #
    
  };
}
