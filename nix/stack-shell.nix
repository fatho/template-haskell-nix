{ }:
let
    nixpkgs = import ./nixpkgs.nix {};
    mkDependencies = import ./haskell-dependencies.nix;
in
    nixpkgs.haskell.lib.buildStackProject {
        name = "stack-env";
        # Provide a GHC with all dependencies baked in
        ghc = nixpkgs.haskellPackages.ghcWithHoogle mkDependencies;
        buildInputs = with nixpkgs; [
            llvm_7 glibcLocales
        ];
    }
