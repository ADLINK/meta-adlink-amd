

DISTRO_FEATURES:append = " systemd x11 virtualization "


IMAGE_FSTYPES = " wic.bmap wic.gz"
DISK_SIGNATURE_UUID = ""

WKS_ADLINK_ROOT_FS = "ext4"
WKS_FILE:intel-corei7-64 = "adlink-efidisk.wks.in"
WKS_ADLINK_ROOT_SIZE_MB = "8192"
WKS_ADLINK_DATA_SIZE_MB = "2048"
WKS_ADLINK_SWAP_SIZE_MB = "1024"
WKS_ADLINK_BOOT_SIZE_MB = "128"

# Runtime environment export setting for x11
IMAGE_INSTALL:append = " xserver-nodm-config xinit-env"




# use openssh instead of dropbear
IMAGE_FEATURES:append = " ssh-server-openssh"


IMAGE_INSTALL:append = " kernel-base kernel-devsrc kernel-modules"

# OS-release info
IMAGE_INSTALL:append = " os-release"


