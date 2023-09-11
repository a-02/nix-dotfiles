{ config, pkgs, ... }:

{
  fonts.fonts = [
    pkgs.terminus_font
  ];

  fonts.fontconfig.defaultFonts = {
    monospace = [ "Terminus" ];
  };
}

# ".local/bin" = {
#   source = ./sources/scripts;
#   recursive = true;
#};
