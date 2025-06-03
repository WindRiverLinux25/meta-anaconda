FILESEXTRAPATHS:prepend := "${LAYER_PATH_meta-anaconda}/recipes-kernel/linux/files/:"
SRC_URI:append = " \
    file://dmthin.scc \
    file://multipath.scc \
    file://crypt.scc \
"

KERNEL_FEATURES:append = " \
    features/drm-bochs/drm-bochs.scc \
    cfg/systemd.scc \
"
