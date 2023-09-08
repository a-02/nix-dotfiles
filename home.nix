{ config, pkgs, ... }:

{
  imports = [
    <home-manager/nixos>
  ];
  home-manager.users.nks = {
    home.stateVersion = "23.05";
    home.file = {
      ".friendrc" = {
        text = ''
	  Hello, world!
	'';
      };
    };
  };
}


