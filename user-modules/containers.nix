{config, pkgs, lib, inputs, ...}:

{
  
  # ---- Flatpak ---- #
  home.sessionVariables = {
    XDG_DATA_DIRS = "$XDG_DATA_DIRS:/usr/share:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share";
  };
  #services.flatpak.enable = true;
  #services.flatpak.packages = [ { appId = "com.kde.kdenlive"; origin = "flathub";  }   ];
  #services.flatpak.update.onActivation = true;
  # ---- ---- ---- #
  
  # ---- Docker ---- #
  # ---- ---- ---- #
  
  # ---- Virtualization ---- #
  # Various packages related to virtualization, compatability and sandboxing
  home.packages = with pkgs; [
    # Virtual Machines and wine
    libvirt
    virt-manager
    qemu
    uefi-run
    lxc
    swtpm
    flatpak
    
    # Filesystems
    dosfstools
  ];
  
  home.file.".config/libvirt/qemu.conf".text = '' nvram = ["/run/libvirt/nix-ovmf/OVMF_CODE.fd:/run/libvirt/nix-ovmf/OVMF_VARS.fd"] '';
  # ---- ---- ---- #
  
}
