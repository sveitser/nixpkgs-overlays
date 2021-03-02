Put this repo at `~/.config/nixpkgs/overlays` for `nix` commands to pick up.

To use with nixos system nixpkgs (e. g. `nixos-rebuild`), for example:

```nix
  nixpkgs.overlays = [
    (import ./path/to/python.nix)
    (import ./path/to/overlays.nix)
  ];
```

For more information see https://nixos.wiki/wiki/Overlays#Applying_overlays_automatically.
