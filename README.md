# Haskell-Nix Template

Repository template for a Haskell project that pulls in GHC and all Haskell dependencies via nix,
but still allows building with stack for added development convenience (mostly incremental builds).
Additionally, the `shell.nix` provides some common Haskell development tools.

## Updating Upstream

Upstream [nixpkgs](https://github.com/NixOS/nixpkgs/tree/nixpkgs-unstable) is managed using [`niv`](https://github.com/nmattia/niv).