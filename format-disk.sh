#!/bin/sh

# Replace <disk-name> with the name of your disk
echo Disk Name:
read diskName
sed 's/<disk-name>/${diskName}/' /tmp/disk-config.nix
echo Disk ${diskName} selected

# Copy the disk configuration to your machine
cd /tmp
curl https://raw.githubusercontent.com/1sgray/.nixfiles/main/disk/disk-config.nix -o /tmp/disk-config.nix

# Run disko to partition, format and mount your disks
sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko /tmp/disk-config.nix


