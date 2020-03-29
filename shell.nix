let
  nixpkgs = import (
    let
      version = "ef4b914b113119b7a70cf90b37496413d85723a3";
    in builtins.fetchTarball {
      name   = "nixpkgs-${version}";
      url    = "https://github.com/NixOS/nixpkgs/archive/${version}.tar.gz";
      sha256 = "1flgwivn53vk04svj4za39gg6g6r7r92g3y201h8cml0604gsmg8";
    }
  ) {};

  dhall-haskell = import (
    let
      version = "1.31.0";
    in nixpkgs.fetchFromGitHub {
      owner           = "dhall-lang";
      repo            = "dhall-haskell";
      rev             = version;
      fetchSubmodules = true;
      sha256          = "030kxbghm9k1r0amrfdlnz9kq2rqijr7pxhbv0bhcb5lrkzajjak";
    }
  );

in nixpkgs.mkShell {
  buildInputs = [
    dhall-haskell.dhall
    nixpkgs.git
  ];
}
