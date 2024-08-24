{config, pkgs, lib, inputs, ...}:

{
  home.packages = [
    pkgs.jre8 # Java Runtime
    pkgs.poppler
  ];
}
