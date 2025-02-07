{
  description = "Planet Nix Posters";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  inputs.flake-compat.url = "https://flakehub.com/f/edolstra/flake-compat/1.tar.gz";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        packages = with pkgs; rec {
          planetNixSite = stdenv.mkDerivation {
            name = "planetnix-posters";
            src = ./.;
            buildInputs = with pkgs; [
              typst
            ];
            buildCommand = '''';

            installPhase = ''
              mkdir $out
              typst compile --font-path ./fonts posters.typ $out/planetnix-posters.pdf
            '';
          };

          default = planetNixSite;
        };
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            alejandra
            typst
            tinymist
            zip
          ];
        };
      }
    );
}
