{ config, pkgs, ... }:
{
  home.file = {
    ".config/hypr".source = config.lib.file.mkOutOfStoreSymlink /home/tinsuki/.dotfiles/hypr;
    ".config/tofi".source = config.lib.file.mkOutOfStoreSymlink /home/tinsuki/.dotfiles/tofi;
    ".config/waybar".source = config.lib.file.mkOutOfStoreSymlink /home/tinsuki/.dotfiles/waybar;
    ".config/fastfetch".source = config.lib.file.mkOutOfStoreSymlink /home/tinsuki/.dotfiles/fastfetch;
    ".config/oh-my-posh".source = config.lib.file.mkOutOfStoreSymlink /home/tinsuki/.dotfiles/oh-my-posh;
    ".config/kitty".source = config.lib.file.mkOutOfStoreSymlink /home/tinsuki/.dotfiles/kitty;
    ".config/dunst".source = config.lib.file.mkOutOfStoreSymlink /home/tinsuki/.dotfiles/dunst;
    ".icons".source = config.lib.file.mkOutOfStoreSymlink /home/tinsuki/.dotfiles/assets/icons;
    ".config/wlogout".source = config.lib.file.mkOutOfStoreSymlink /home/tinsuki/.dotfiles/wlogout;
  };
}