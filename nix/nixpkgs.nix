{ overlays ? [ ]
, config ? { }
}:
let
  sources = import ./sources.nix;

  nixpkgs = import sources.nixpkgs {
    inherit overlays;
    config = {
      imports = [
        config
      ];
    };
  };
in
  nixpkgs
