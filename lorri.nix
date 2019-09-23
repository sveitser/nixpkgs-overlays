self: super: {
  lorri =
    let src =
      (super.fetchFromGitHub {
        owner = "sveitser";
        repo = "lorri";
        rev = "a8317c4a05bd06eb1dccb696a28a290b17f6ecb7";
        sha256 = "1vlj36d2cirbkzp0yzs1rq345zq4l93dxkfp3vnh2x4hm1mlhqwg";
      });
    in super.callPackage src { inherit src; };
}
