{ config, pkgs, ... }:

{
  home.username = "kraeki";
  home.homeDirectory = "/home/kraeki";
  home.stateVersion = "23.11";

  programs.home-manager.enable = true;

  programs.zsh = {
    enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "per-directory-history" ]; 
      theme = ""; 
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

    initContent = ''
      # Powerlevel10k initialisieren
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
    '';
  };

  # home.packages = with pkgs; [ dracula-theme ];
  # gtk = {
  #   enable = true;
  #   theme = {
  #     name = "Dracula";
  #     package = pkgs.dracula-theme;
  #   };
  #   iconTheme = {
  #     name = "Dracula";
  #     package = pkgs.dracula-theme;
  #   };
  #   cursorTheme = {
  #     name = "Dracula";
  #     package = pkgs.dracula-theme;
  #   };
  #   
  #   gtk3.extraConfig = {
  #     "gtk-application-prefer-dark-theme" = "1";
  #   };
  #   gtk4.extraConfig = {
  #     "gtk-application-prefer-dark-theme" = "1";
  #   };
  # };

  # # Ensure GTK settings are applied for Wayland
  # home.pointerCursor = {
  #   gtk.enable = true;
  #   package = pkgs.dracula-theme;
  #   name = "Dracula-cursors";
  #   size = 24; # Adjust size as needed
  # };
}

