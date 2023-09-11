{ config, pkgs, lib, ... }:

{
  imports = [
    <home-manager/nixos>
  ];
  home-manager.users.nks = {
    programs.bash.shellAliases = {
      ll = "ls -l";
      v = "nvim";
    };
    home.stateVersion = "23.05";
    home.packages = [ pkgs.bash pkgs.alacritty pkgs.acpi pkgs.vscode pkgs.firefox ];
    home.file = {
      ".bashrc".source = ../sources/bashrc.sh;
      ".config/nvim/init.vim".source = ../sources/init.vim;
      ".gitconfig".source = ../sources/gitconfig.txt;
      ".config/sway/config".source = ../sources/swayconfig.txt;
      ".config/alacritty/alacritty.toml".source = ../sources/alacritty.toml;
      };
    };
}

# ".local/bin" = {
#   source = ./sources/scripts;
#   recursive = true;
#};
