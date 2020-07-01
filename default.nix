with import <nixpkgs> { };

let
  #pythonNix = import ./requirements.nix { inherit pkgs };
in
stdenv.mkDerivation {
  name = "python";
  buildInputs = [
    python38
    python38Packages.pip
    python38Packages.setuptools
    python38Packages.virtualenvwrapper
    python38Packages.matplotlib
    python38Packages.scikit-build
    python38Packages.scipy
    python38Packages.numpy
  ];
  shellHook = "
    unset SOURCE_DATE_EPOCH
    export LD_LIBRARY_PATH=${lib.makeLibraryPath [stdenv.cc.cc]}
    virtualenv venv
    . venv/bin/activate
  ";
}
