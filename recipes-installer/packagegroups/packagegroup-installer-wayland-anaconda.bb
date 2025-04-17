DESCRIPTION = "Tasks for desktop wayland applications to support anaconda"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

PACKAGE_ARCH = "${TUNE_PKGARCH}"

inherit packagegroup features_check
REQUIRED_DISTRO_FEATURES = "wayland"

RDEPENDS:packagegroup-installer-wayland-anaconda = "\
    dbus \
    liberation-fonts \
    libsdl2 \
    adwaita-icon-theme \
    pango \
    pango-modules \
    createrepo-c \
    gobject-introspection \
"

