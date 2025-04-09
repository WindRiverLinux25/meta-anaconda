SUMMARY = "Bindings for libxkbregistry using cffi"
DESCRIPTION = "Python bindings for libxkbregistry using cffi."
HOMEPAGE = "https://github.com/sde1000/python-xkbregistry"
SECTION = "devel/python"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=2e3ecc5ccb4145b0bbd7f1fa101f7e4e"

DEPENDS = "python3-cffi-native libxkbcommon"

SRC_URI[sha256sum] = "133f3a023fdc2d1977ceebd7d3a7723830e31778a783e029d041ff3a5d682e54"

inherit pypi python_setuptools_build_meta
