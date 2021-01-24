{ buildPythonPackage
, fetchFromGitHub
, pytest
, decorator
, future
, matplotlib
, pandas-datareader
, scikitlearn
, tabulate
}:

buildPythonPackage rec {

  pname = "ffn";
  version = "0.3.5-dev";

  # No release on pypi since 2018
  src = fetchFromGitHub {
    owner = "pmorissette";
    repo = pname;
    rev = "171c46c1df824aeaea3be5b3b09aa29f4e0057e3";
    sha256 = "1zgj682kkzgfmrs8clxdfsqbaz7mbm305cnsh2mhsm17wqhhgzad";
  };

  checkInputs = [ pytest ];
  checkPhase = "pytest";

  propagatedBuildInputs = [
    decorator
    future
    matplotlib
    pandas-datareader
    scikitlearn
    tabulate
  ];
}
