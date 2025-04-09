# Copyright (C) 2025 Kai Kang <kai.kang@windriver.com>

SUMMARY = "Python pam module supporting py3"
HOMEPAGE = "https://github.com/FirefighterBlu3/python-pam"
SECTION = "devel/python"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=b65882aaede54437e617c55cc8b4fa17"

DEPENDS = "python3-six-native"

SRC_URI[sha256sum] = "97235235ba9b82dbae8068d1099508455949b275f77273ca22fdbd8b1fb5d950"

PYPI_PACKAGE = "python-pam"

inherit pypi python_setuptools_build_meta
