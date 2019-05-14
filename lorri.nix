self: super: {
  lorri =
    let src =
      (super.fetchFromGitHub {
        owner = "sveitser";
        repo = "lorri";
        rev = "91fd3becff4d0564c8584700111ae8a9364b78fc";
        sha256 = "0kvscn48rpggfsxa8wil5jxxmz5c1jsynpm0jhvknsal8vrv991c";
      });
    in super.callPackage src { inherit src; };
}
