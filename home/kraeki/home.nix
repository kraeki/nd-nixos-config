{ config, pkgs, ... }:

{
  home.username = "kraeki";
  home.homeDirectory = "/home/kraeki";

  programs.zsh.enable = true;
  home.stateVersion = "23.11";
}
