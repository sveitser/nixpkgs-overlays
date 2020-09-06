{ buildPythonPackage
, fetchPypi
}:

buildPythonPackage rec {

  pname = "xonsh-direnv";
  version = "1.5.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0mkb4yxia5gd0rmyafpwfxk8zd01lqjw9sx1vlgqcpx57lcfvf1q";
  };

  propagatedBuildInputs = [
  ];
}

