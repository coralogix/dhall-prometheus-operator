let 
  nixpkgs = import (
    let
      version = "0c960262d159d3a884dadc3d4e4b131557dad116";
    in builtins.fetchTarball {
      name   = "nixpkgs-${version}";
      url    = "https://github.com/NixOS/nixpkgs/archive/${version}.tar.gz";
      sha256 = "0d7ms4dxbxvd6f8zrgymr6njvka54fppph1mrjjlcan7y0dhi5rb";
    }
  ) {};

  # broken on OS X - using easy-dhall-nix as a workaround
  /*
  dhall-haskell = import (
    let
      version = "1.32.0";
    in nixpkgs.fetchFromGitHub {
      owner           = "dhall-lang";
      repo            = "dhall-haskell";
      rev             = version;
      fetchSubmodules = true;
      sha256          = "1qn6d1lsw5aky9s5g9v77l1khnl12g2ihj8q865x33d7k4gnrxqd";
    }
  );
  */

  easy-dhall-nix = import (
    let
      version = "1.32.0";
    in nixpkgs.fetchFromGitHub {
      owner  = "justinwoo";
      repo   = "easy-dhall-nix";
      rev    = "62f6ab3eec5a2c0bf62f604f48cd15465b10023a";
      sha256 = "07lvvc3yvjy6ji3z320f467n485hzwwa9ldwi6zylxcb6a2jb7i0";
    }
  ) {};

in nixpkgs.mkShell {
  buildInputs = [
    # broken on OS X - using easy-dhall-nix as a workaround
    /*
    dhall-haskell.dhall
    dhall-haskell.dhall-yaml
    */
    easy-dhall-nix.dhall-simple
    easy-dhall-nix.dhall-json-simple
    easy-dhall-nix.dhall-yaml-simple
  ];
}
