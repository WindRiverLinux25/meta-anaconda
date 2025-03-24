INSTALLER_SERIAL ??= "1"
FILESEXTRAPATHS:prepend:anaconda := "${@bb.utils.contains('INSTALLER_SERIAL', '1', '${THISDIR}/files:', '', d)}"
SRC_URI:append:anaconda = " \
    ${@bb.utils.contains('INSTALLER_SERIAL', '1', 'file://serial-screen-anaconda.sh', '', d)} \
"

do_install:append:anaconda() {
	if [ "${INSTALLER_SERIAL}" = "1" ]; then
		install -d ${D}${sysconfdir}/profile.d
		install -m 644 ${UNPACKDIR}/serial-screen-anaconda.sh ${D}${sysconfdir}/profile.d/
	fi
}
