{
  description = "Home Manager configuration of cjnucette";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    overlays = [inputs.neovim-nightly-overlay.overlay];
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
      overlays = overlays;
    };
  in {
    homeConfigurations."cjnucette" = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;

      # Specify your home configuration modules here, for example,
      # the path to your home.nix.
      extraSpecialArgs = inputs;
      modules = [./home];

      # Optionally use extraSpecialArgs
      # to pass through arguments to home.nix
    };
  };
}
