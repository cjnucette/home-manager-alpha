{
  config,
  pkgs,
  ...
}: {
  programs.zsh = {
    enable = true;
    history = {
      path = "/home/cjnucette/.zsh_history";
      size = 999;
      save = 1000;
      share = true;
      expireDuplicatesFirst = true;
      ignoreDups = true;
    };
    historySubstringSearch = {
      enable = true;
    };
    enableCompletion = true;
    autosuggestion.enable = true;
    enableVteIntegration = true;
    syntaxHighlighting.enable = true;
    zplug = {
      enable = true;
      plugins = [
        {
          name = "romkatv/powerlevel10k";
          tags = [as:theme depth:1];
        }
        {
          name = "jeffreytse/zsh-vi-mode";
        }
      ];
    };
    initExtra = ''
      export PATH="/home/cjnucette/.local/bin:$PATH"
      export PATH="/home/cjnucette/.local/share/bob/nvim-bin:$PATH"

      export NVM_DIR="$HOME/.nvm"
      [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

      export ZVM_VI_EDITOR=nvim
      export ZVM_VI_SURROUND_BINDKEY=s-prefix

      source ~/.p10k.zsh
      source ~/.bash/00_functions.sh
      [ $(hostname) = "alpha" ] && source ~/.bash/10_aliases.sh

      if [ -s ~/.nvm/nvm.sh ]; then
      	alias get-node="nvm install node --reinstall-packages-from=node"
      	alias get-lts-node='nvm install "lts/*" --reinstall-packages-from="$(nvm current)"'
      fi
    '';
    shellAliases = {
      v = "nvim";
      cd = "z";
      ".." = "cd ..";
      "..." = "cd ../..";
      ls = "eza -G --color auto --icons --group-directories-first";
      lss = "eza -G --color auto --icons --group-directories-first -s modified -r";
      ll = "eza -l -a --color always --icons --group-directories-first --git";
      tree = "clear && exa -T -I node_modules --color always --icons -s type";
      lg = "eza -l -a --color always --icons --group-directories-first --git --header";
      lsfzf = "eza --color=always --long --git --no-filesize --icons=always --no-user --no-time --no-permissions";
      unx = "nx; make update && make build";
      uhm = "hm; make update && make build";
      update = "sudo apt update";
      upgrade = "sudo apt upgrade -y";
      nx = "cd ~/.config/nixos";
      hm = "cd ~/.config/home-manager";
      dev = "cd ~/Deveplopment";
      tmp = "cd ~/tmp";
      downloads = "cd ~/Downloads";
      documents = "cd ~/Documents";
      nv = "cd ~/.config/nvim";
      videos = "cd ~/Videos";
      porver = "cd ~/Videos/Series/PorVer";
      anime = "cd ~/Videos/Series/Anime";
      movies = "cd ~/Videos/Movies";
      trash = "gio trash";
      open = "gio open";
    };
  };
}
