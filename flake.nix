{
  description = "A Typst project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    typix = {
      url = "github:loqusion/typix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    nixpkgs,
    typix,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};

        typixLib = typix.lib.${system};

        src = typixLib.cleanTypstSource ./.;
        commonArgs = {
          typstSource = "main.typ";

          fontPaths = [
            # Add paths to fonts here
            "${pkgs.roboto}/share/fonts/truetype"
            "${pkgs.source-sans-pro}/share/fonts/truetype"
            "${pkgs.source-sans}/share/fonts/truetype"
            "${pkgs.font-awesome}/share/fonts/opentype"
          ];

          virtualPaths = [
            {
              dest = "profile.jpg";
              src = ./profile.jpg;
            }
          ];
        };

        unstable_typstPackages = [
          {
            name = "modern-cv";
            version = "0.9.0";
            hash = "sha256-zCv2UABp3lBBbYthrSXD4OXWaiIjMdwRPQbq5a8AlUk=";
          }
          {
            name = "fontawesome";
            version = "0.6.0";
            hash = "sha256-dgb+YAYLEKgMMEWa8yelMvRdEoesPj5HI+70w3mCUcQ=";
          }
          {
            name = "linguify";
            version = "0.4.2";
            hash = "sha256-kuoK0r29kvc0rvDIQWELp/fZUm3Bzxc5W8M/YMU3lvg=";
          }
        ];

        # Compile a Typst project, *without* copying the result
        # to the current directory
        build-drv = typixLib.buildTypstProject (
          commonArgs
          // {
            inherit src unstable_typstPackages;
          }
        );

        # Compile a Typst project, and then copy the result
        # to the current directory
        build-script = typixLib.buildTypstProjectLocal (
          commonArgs
          // {
            inherit src unstable_typstPackages;
          }
        );

        # Watch a project and recompile on changes
        watch-script = typixLib.watchTypstProject commonArgs;
      in {
        checks = {
          inherit build-drv build-script watch-script;
        };

        packages.default = build-drv;

        apps = rec {
          default = watch;
          build = flake-utils.lib.mkApp {
            drv = build-script;
          };
          watch = flake-utils.lib.mkApp {
            drv = watch-script;
          };
        };

        devShells.default = typixLib.devShell {
          inherit (commonArgs) fontPaths virtualPaths;
          packages = [
            # WARNING: Don't run `typst-build` directly, instead use `nix run .#build`
            # See https://github.com/loqusion/typix/issues/2
            # build-script
            watch-script
            # More packages can be added here, like typstfmt
            pkgs.typstfmt
          ];
        };
      }
    );
}
