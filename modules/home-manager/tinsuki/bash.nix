{ config, pkgs, ...}:
{
  programs.bash.enable = true;

  programs.bash = {
    
    shellAliases = {
      l = "ls -alh";
      ll = "ls -l";
      ls = "ls --color=tty";
      remove-tofi-cache = "rm /home/tinsuki/.cache/tofi-*";
      cleart = "clear && fastfetch";
    };

    bashrcExtra = ''
      eval "$(oh-my-posh init bash --config /home/tinsuki/.config/oh-my-posh/config.json)"
    
      if [[ -n $KITTY_WINDOW_ID && $(tput lines) -ge 43 && $(tput cols) -ge 92 ]]; then
	      fastfetch
      fi
    '';
  };
}