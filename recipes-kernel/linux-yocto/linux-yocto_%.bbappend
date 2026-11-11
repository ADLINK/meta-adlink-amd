FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI:append = "  file://adlink-amd-kmeta;type=kmeta;destsuffix=/adlink-amd-kmeta \
"		    
KERNEL_FEATURES:append = " adlink.scc"

#SRCREV_machine = "${AUTOREV}"

#SRCREV_machine = "e6bfde1a9e4ef459ba4b93b0439d1a019e0ad77c"
	    

DEPENDS += "linux-firmware"

do_configure:append() {
    echo 'CONFIG_EXTRA_FIRMWARE="amdgpu/psp_13_0_4_toc.bin amdgpu/psp_13_0_4_ta.bin amdgpu/dcn_3_1_4_dmcub.bin amdgpu/gc_11_0_1_pfp.bin amdgpu/gc_11_0_1_me.bin amdgpu/gc_11_0_1_mec.bin amdgpu/gc_11_0_1_rlc.bin amdgpu/gc_11_0_1_imu.bin amdgpu/gc_11_0_1_mes.bin amdgpu/gc_11_0_1_mes1.bin amdgpu/gc_11_0_1_mes_2.bin amdgpu/vcn_4_0_2.bin amdgpu/sdma_6_0_1.bin"' >> ${B}/.config
    echo "CONFIG_EXTRA_FIRMWARE_DIR=\"${STAGING_DIR_TARGET}${nonarch_base_libdir}/firmware\"" >> ${B}/.config
    oe_runmake -C ${B} olddefconfig
}
