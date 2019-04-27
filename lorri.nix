self: super: {
  lorri =
    let src =
      (super.fetchFromGitHub {
        owner = "target";
        repo = "lorri";
        rev = "5ee8a05709db718b453de10785573bead1be1124";
        sha256 = "0mj4qv0vhd4wly172741vya371mzhcwg2kpmpwlbaxxrwxjl5gxg";
      });
    in super.callPackage src { inherit src; };
}
