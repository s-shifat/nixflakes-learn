{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };

    # Python Maker
    py = pkgs.python311.withPackages (ps: [
        ps.flask
    ]);

    # Launching wrapper
    runner = pkgs.writeShellScriptBin "run-myapp" ''
      exec ${py}/bin/python3 ${self}/myapp.py
    '';

  in {

# nix run -> starts myapp.py
    apps.${system}.default = {
      type = "app";
      program = "${runner}/bin/run-myapp";
    };


# nix develop -> Drops into a devshell
    devShells.${system}.default = {
      packages = [
        py
        pkgs.python311Packages.numpy
        pkgs.uv
      ];
    };

  };
}
