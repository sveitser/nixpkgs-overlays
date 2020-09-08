{ buildPythonPackage
, fetchFromGitHub
}:

buildPythonPackage rec {

  pname = "xontrib-fzf-widgets";
  version = "0.0.3";

  src = fetchFromGitHub {
    owner = "laloch";
    repo = "xontrib-fzf-widgets";
    rev = "62aacd796c96b9ac9682b57d165105419c162c8d";
    sha256 = "1bv7k0i2m0zz0qpq8cv194iri44p2m3b9md5jvwkygcq8xwipk1p";
    fetchSubmodules = false;
  };
}
