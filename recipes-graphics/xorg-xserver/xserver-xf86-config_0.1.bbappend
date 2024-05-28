do_install:prepend:qemux86-64:anaconda () {
    if test -s ${S}/xorg.conf; then
        sed -i 's/Modes *"640x480"/Modes    "1024x768"/g' ${S}/xorg.conf
    fi
}

do_install:prepend:qemux86:anaconda () {
    if test -s ${S}/xorg.conf; then
        sed -i 's/Modes *"640x480"/Modes    "1024x768"/g' ${S}/xorg.conf
    fi
}

