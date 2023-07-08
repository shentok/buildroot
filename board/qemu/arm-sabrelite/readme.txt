Run the emulation with:

  qemu-system-arm -M sabrelite -kernel output/images/zImage -dtb output/images/imx6q-sabrelite.dtb -drive file=output/images/rootfs.ext2,if=scsi,format=raw -append "rootwait root=/dev/sda console=ttyAMA0,115200" -serial stdio -net nic,model=rtl8139 -net user # qemu_arm_sabrelite_defconfig

The login prompt will appear in the terminal that started Qemu. The
graphical window is the framebuffer.
