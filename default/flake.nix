{
  description = "Basic Nix DevShell Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.${system}.default = pkgs.mkShell {
      nativeBuildInputs = with pkgs; [
        # Add your devShell dependencies here
        # nodejs
      ];

      shellHook = ''
        # Add your shellHook commands here
      '';
    };
  };
}
