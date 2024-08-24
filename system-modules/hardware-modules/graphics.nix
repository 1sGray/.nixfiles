# all hardware graphics configs as a home module
{config, pkgs, lib, inputs, ...}:

{
  
  hardware.opengl= {
    enable = true;
    extraPackages = [ pkgs.rocmPackages.clr.icd ];
    # driSupport = true; # Whether to enable accelerated OpenGL rendering through the Direct Rendering Interface (DRI), ( seems to no longer be needed )
  };
  
  # Force radv
  environment.variables.AMD_VULKAN_ICD = "RADV";
  
}
