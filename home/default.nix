# vim: ts=2 sts=-1 sw=0 noexpandtab
{
  config,
  pkgs,
  ...
}: {
  home = {
    username = "cjnucette";
    homeDirectory = "/home/cjnucette";
    stateVersion = "23.05";
  };

  imports = [
    ./zsh
    ./git
    # ./tmux
    # ./nvim
  ];

  home.packages = with pkgs; [
    # cli
    aria
    asciiquarium
    bat
    blackbox-terminal
    conky
    distrobox
    eza
    fd
    ffmpeg
    ffmpegthumbnailer
    figlet
    gdu
    glow
    htop
    imagemagick
    jq
    killall
    kitty
    lazygit
    lm_sensors
    lolcat
    mkvtoolnix
    mplayer
    mpv
    neofetch
    nnn
    p7zip
    peaclock
    podman
    podman-compose
    podman-tui
    poppler
    (python311.withPackages (ps: with ps; [gtts requests]))
    qbittorrent
    rio
    silver-searcher # ag
    sox
    speechd
    sshfs
    tailspin
    tilix
    tmux
    toilet
    unar
    unzip
    xclip

    # gui
    # (nerdfonts.override { fonts = ["JetBrainsMono" "FiraCode" "DroidSansMono" "Ubuntu"]; })
    # papirus-icon-theme
    # adw-gtk3

    # apps
    # firefox
    # google-chrome
    # celluloid
    cinnamon.nemo-with-extensions
    # lsp, formatting (when not using nvim module)
    nixd
    alejandra
  ];

  home.file = {};
  home.sessionVariables = {};
  home.extraOutputsToInstall = ["man"];

  programs.man = {
    enable = false;
  };

  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
  };

  programs.ripgrep = {
    enable = true;
  };

  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # Install globally, but configure it here.
  # programs.gh = {
  #   enable = true;
  #   gitCredentialHelper.enable = true;
  #   settings.git.git_protocol = "ssh";
  # };

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    nix-direnv.enable = true;
  };

  programs.yt-dlp = {
    enable = true;
    # settings = {
    #   embed-thumbnail = true;
    #   write-auto-subs = true;
    #   embed-subs = true;
    #   sub-format = "srt";
    #   sub-langs = "en.*";
    # };
  };

  # programs.bash = {
  #   enable = true;
  #   enableCompletion = true;
  #   initExtra = builtins.readFile ./bashrc;
  # };

  programs.fish = {
    enable = true;
  };

  programs.home-manager.enable = true;
  targets.genericLinux.enable = true;
}
