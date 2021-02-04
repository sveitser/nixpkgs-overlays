self: super: let
  overridePython = pypkgs: let
    pyDir = ./python;
    packageOverrides = pyself: pysuper: (builtins.foldl'
      (acc: item: acc // {
        "${item}" = pyself.callPackage (pyDir + ("/" + item)) {};
      })
      { }
      (builtins.attrNames (builtins.readDir pyDir)));

  in pypkgs.override { inherit packageOverrides; };
in {
  python38 = overridePython super.python38;
  python37 = overridePython super.python37;
  python36 = overridePython super.python36;
}
