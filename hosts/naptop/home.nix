{ config, pkgs, ... }:

{
  home.username = "kraeki";
  home.homeDirectory = "/home/kraeki";

  programs.home-manager.enable = true;

  programs.zsh = {
    enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ]; # keine Plugins wie autosuggestions hier eintragen!
      theme = "robbyrussell";
    };

    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.zsh-autosuggestions;
      }
      {
        name = "zsh-syntax-highlighting";
        src = pkgs.zsh-syntax-highlighting;
      }
    ];
  };
}

