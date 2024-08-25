{
  disko.devices = {
    disk = {
      main = {
        device = "/dev/sdc";
        type = "disk";
        content = {
          type = "gpt";

          partitions = {

            ESP = {
              type = "EF00";
              size = "500M";
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
                type = "swap";
                resumeDevice = true;
              };
            };

          };

        };
      };
    };
  };
}

