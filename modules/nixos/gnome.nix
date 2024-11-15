{config, lib, pkgs, ...}:
{
  services.xserver.desktopManager.gnome.enable = true;

  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos
    gnome-tour
    gedit
    gnome-extensions-cli
  ]) ++ (with pkgs.gnome; [
    cheese # webcam tool
    gnome-music
    epiphany # web browser
    geary # email reader
    gnome-characters
    tali # poker game
    iagno # go game
    hitori # sudoku game
    atomix # puzzle game
    yelp # Help view
    gnome-contacts
    gnome-initial-setup
  ]);


  services.udev.packages = [ pkgs.gnome.gnome-settings-daemon ];

  environment.systemPackages = with pkgs; [
    gnomeExtensions.blur-my-shell
    gnomeExtensions.applications-menu
    gnomeExtensions.caffeine
    gnomeExtensions.gtk4-desktop-icons-ng-ding
    gnomeExtensions.tiling-assistant
    gnomeExtensions.vitals
    gnomeExtensions.places-status-indicator
    gnomeExtensions.user-themes
    gnomeExtensions.hide-activities-button
    gnomeExtensions.control-blur-effect-on-lock-screen
    gnomeExtensions.customize-clock-on-lock-screen
    gnomeExtensions.unlock-dialog-background
    gnome.gnome-tweaks
    gnome.gnome-shell-extensions
    gnomeExtensions.extension-list
    gnome-extension-manager
    gnome-extensions-cli
  ];
  
}