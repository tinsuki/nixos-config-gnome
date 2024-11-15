{ config, lib, pkgs, inputs,... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
      ../../modules/nixos
    ];

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  programs.adb.enable = true;

  users.users.tinsuki = {
    isNormalUser = true;
    description = "tinsuki";
    extraGroups = [ "networkmanager" "wheel" "docker" "kvm" "adbusers" ];
  };

  home-manager = {
    extraSpecialArgs = {inherit inputs;};
    users = {
      "tinsuki" = import ./tinsuki/home.nix;
    };
  };

  environment.interactiveShellInit = ''
    export PATH=$PATH:/usr/bin
  '';

  programs.nix-ld.enable = true;
  
  system.stateVersion = "24.05";
}
