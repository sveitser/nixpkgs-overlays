{ buildPythonPackage
, fetchPypi
}:

buildPythonPackage rec {

  pname = "xontrib-fzf-widgets";
  version = "0.0.3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "16x83scy8b27mh03aspra2dzsbx6ra2ym26h72vdpr2i5s0cxd2c";
  };

  propagatedBuildInputs = [
  ];
}
