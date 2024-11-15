{ config, pkgs, ...}:
{
  gtk = {
    enable = true;
    iconTheme = {
      name = "Glory-blue";
    };

    theme = {
      name = "Orchis-Purple-Dark";
      package = pkgs.orchis-theme;
    };

    cursorTheme = {
      name = "Furina";
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };

  home.sessionVariables.GTK_THEME = "Orchis-Purple-Dark";
  
  dconf = {
    enable = true;
    settings = {
      "org/gnome/shell" = {
        disable-user-extensions = false; # enables user extensions
        enabled-extensions = [
          pkgs.gnomeExtensions.blur-my-shell.extensionUuid
          pkgs.gnomeExtensions.caffeine.extensionUuid
          pkgs.gnomeExtensions.gtk4-desktop-icons-ng-ding.extensionUuid
          pkgs.gnomeExtensions.tiling-assistant.extensionUuid
          pkgs.gnomeExtensions.vitals.extensionUuid
          pkgs.gnomeExtensions.places-status-indicator.extensionUuid
          pkgs.gnomeExtensions.user-themes.extensionUuid
          pkgs.gnomeExtensions.hide-activities-button.extensionUuid
          pkgs.gnomeExtensions.control-blur-effect-on-lock-screen.extensionUuid
          pkgs.gnomeExtensions.customize-clock-on-lock-screen.extensionUuid
          pkgs.gnomeExtensions.unlock-dialog-background.extensionUuid
          pkgs.gnomeExtensions.extension-list.extensionUuid
        ];
      };

      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
        clock-show-weekday = true;
      };
  
    };
  };
}