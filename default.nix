with import <nixpkgs> {
  overlays = [ (import ./python.nix) ];
};

(python3.withPackages (ps: with ps; [
  # bandmat
  clldutils
  csvw
  # fastdtw
  joblib
  lws
  # nnmnkwii
  phonemizer
  # pysptk
  resampy
  segments
]))

