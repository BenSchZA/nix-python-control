# Nix [python-control](https://python-control.readthedocs.io) environment

```bash
nix-shell -p pypi2nix
pypi2nix -e control -e slycot -s scikit-build -E cmake
```

```bash
nix-shell
python robust_siso.py
```

More examples: https://github.com/python-control/python-control/blob/master/examples/

