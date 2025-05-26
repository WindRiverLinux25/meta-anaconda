FILESEXTRAPATHS:prepend:anaconda := "${THISDIR}/files:"
SRC_URI:append:anaconda = " \
    file://0001-set-tty2-as-default-instance.patch \
"

PACKAGECONFIG:remove:anaconda = "timesyncd"
PACKAGECONFIG:remove = "${@bb.utils.contains('DISTRO_FEATURES', 'anaconda-support', 'timesyncd', '', d)}"

do_install:append:anaconda() {
    # Explicitly enable tty2
    mkdir -p ${D}${sysconfdir}/systemd/system/getty.target.wants
    ln -nsf ${systemd_unitdir}/system/getty@.service \
        ${D}${sysconfdir}/systemd/system/getty.target.wants/getty@tty2.service

    rm -f ${D}${systemd_unitdir}/system/autovt@.service

    # modify serial-getty@.service according to the same name file once in this directory
    sed -i -e "/BindsTo=/a Requires=anaconda-init.service" \
           -e "/^\[Service\]/a Environment=TERM=xterm HOME=${ROOT_HOME} PATH=/usr/bin:/bin:/sbin:/usr/sbin LANG=en_US.UTF-8\nWorkingDirectory=${ROOT_HOME}" \
           -e "s:-o '.*':-n -l /bin/bash -o '--login' %I:" \
           -e 's/- ${TERM}/${TERM}/' ${D}${systemd_unitdir}/system/serial-getty@.service
}
