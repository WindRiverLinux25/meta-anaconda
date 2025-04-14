SUMMARY = "ProductMD is a Python library providing parsers for metadata\
related to composes and installation media"
DESCRIPTION = "Product, compose and installation media metadata library"
HOMEPAGE = "http://productmd.readthedocs.io/en/latest/"
SECTION = "devel"
LICENSE = "LGPL-2.1-only"
LIC_FILES_CHKSUM = "file://LICENSE;md5=768997ba510a952bef1775c50bc22b00"

SRC_URI = "git://github.com/release-engineering/productmd.git;protocol=https;branch=master \
           file://add-wrlinux-version-pattern.patch \
           "
SRCREV = "99182b4fea09408ad8a69f8fa39e1892e84f90b2"
S = "${WORKDIR}/git"

inherit setuptools3
