Run the emulation with:

 qemu-system-mips64el -M fuloong2e -kernel output/images/vmlinux -vga none -drive file=output/images/rootfs.ext2,format=raw -append "rootwait root=/dev/sda console=ttyS0,115200" # qemu_mips64el_fuloong2e_defconfig

The login prompt will appear in the terminal that started Qemu. The
graphical window is the framebuffer.
