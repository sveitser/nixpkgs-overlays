with import <nixpkgs> {
  overlays = [ (import ./python.nix) ];
};

(python3.withPackages (ps: with ps; [
  clldutils
  csvw
  joblib
  lws
  phonemizer
  resampy
  segments
  tensorboardX
]))

