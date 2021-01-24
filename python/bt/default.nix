{ buildPythonPackage
, fetchFromGitHub
, nose
, cython
, ffn
, pyprind
}:

buildPythonPackage rec {

  pname = "bt";
  version = "0.2.8-dev";

  # No release on pypi since 2018
  src = fetchFromGitHub {
    owner = "pmorissette";
    repo = pname;
    rev = "404f5ffabfb0da01cb40708541bb4cc2135693ef";
    sha256 = "1mz3d768qjrm6ivkmclyp8yipw3bddpfqpn2j74g34z4j48rygja";
  };

  checkInputs = [ nose ];
  checkPhase = "nosetests tests/";

  propagatedBuildInputs = [
    cython
    ffn
    pyprind
  ];
}
