{
  config,
  pkgs,
  ...
}: {
  programs.git = {
    enable = true;
    # includes = [{ path = "./gitconfig"; }];
    userName = "Carlos Nucette";
    userEmail = "cjnucette@gmail.com";
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
    };
    aliases = {
      co = "checkout";
      d = "diff";
      ds = "diff --staged";
      st = "status";
      p = "push";
      pl = "pull";
      a = "add";
      ap = "add --patch";
      cm = ''!f() { git commit -m "$@"; }; f'';
      nw = ''!f() { git cm "📦️ NEW: $@"; }; f'';
      ip = ''!f() { git cm "👌 IMPROVE: $@"; }; f'';
      fx = ''!f() { git cm "🐛 FIX: $@"; }; f'';
      rl = ''!f() { git cm "🚀 RELEASE: $@"; }; f'';
      dc = ''!f() { git cm "📖 DOC: $@"; }; f'';
      tt = ''!f() { git cm "🤖 TEST: $@"; }; f'';
      bk = ''!f() { git cm "⚠️  BREAKING: $@"; }; f'';
      lola = "log --graph --decorate --oneline --all";
      fancy = "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches";
      last = "log -1 HEAD";
    };
  };
}
