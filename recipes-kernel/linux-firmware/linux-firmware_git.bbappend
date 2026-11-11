PACKAGES =+ "linux-firmware-amdgpu"

LICENSE:linux-firmware-amdgpu = "Firmware-amdgpu"

FILES:linux-firmware-amdgpu = " \
    ${nonarch_base_libdir}/firmware/amdgpu/ \
"

RDEPENDS:linux-firmware-amdgpu += "linux-firmware-license"

PARALLEL_MAKE = ""

SYSROOT_DIRS += "${nonarch_base_libdir}/firmware/amdgpu"
