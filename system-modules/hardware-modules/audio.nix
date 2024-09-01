# all hardware audio configs as a home module
{config, pkgs, lib, inputs, ...}:

{
  
  services.pipewire = {
    enable = true;
    audio.enable = true;
    
    # enable ALSA support
    alsa.enable = true;
    
    # enable 32-bit ALSA support on 64-bit systems
    alsa.support32Bit = true;
    
    # enable JACK audio emulation
    jack.enable = true;
    
    # enable PulseAudio server emulation
    pulse.enable = true;
    
    # WirePlumber, a modular session / policy manager for PipeWire
    #wireplumber = {
    # enable = true;
    # # List of packages that provide WirePlumber configuration, in the form of share/wireplumber/*/*.conf files.
    # #configPackages = [];
    #
    # #extraConfig = {};
    #};
    
  };
  
}
