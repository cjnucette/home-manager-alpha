{
  config,
  pkgs,
  ...
}: {
  programs.neovim = {
    enable = true;
    vimAlias = true;
    vimdiffAlias = true;
    withNodeJs = true;
    withPython3 = true;
    extraPackages = with pkgs; [
      # nvim deps
      (python311.withPackages (ps: with ps; [neovim pip gtts]))
      sox
      fd
      ripgrep
      deno
      nodejs_22
      gcc
      tree-sitter
      # lsp, linters
      # TODO: Add prismals and emmet-language-server
      rust-analyzer
      lua-language-server
      nixd
      vscode-langservers-extracted
      javascript-typescript-langserver
      docker-compose-language-service
      emmet-ls
      nodePackages.prettier
      nodePackages.bash-language-server
      shfmt
      alejandra
      ltex-ls
    ];
  };
}
