let
  nixpkgs = import ./nix/nixpkgs.nix {};
in
  nixpkgs.mkShell {
    name = "haskell-dev";
    nativeBuildInputs = with nixpkgs; [
      # Haskell development
      stack
      hlint
      stylish-haskell
      haskellPackages.hlint
      haskellPackages.apply-refact
      haskellPackages.haskell-language-server
      haskellPackages.implicit-hie
      haskellPackages.hspec-discover

      # Nix tools
      niv
    ];
  }
