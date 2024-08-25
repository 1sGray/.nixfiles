# USAGE in your configuration.nix.
# Update devices to match your hardware.
# {
#  imports = [ ./disko-config.nix ];
#  disko.devices.disk.main.device = "/dev/sda";
# }
{
  disko.devices = {
    disk = {
      main = {
        type = "disk";
        device = "<disk-name>";
        content = {
          type = "gpt";
          partitions = {
            #boot = {
            # size = "1M";
            # type = "EF02"; # for grub MBR
            #};
            ESP = {
              size = "512M";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
              };
            };
            root = {
              size = "100%";
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/";
              };
            };
            swap = {
              size = "2G";
              content = {
                type= "swap";
                resumeDevice = true;
              };
            };
          };
        };
      };
    };
  };
}
