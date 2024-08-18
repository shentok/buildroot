#!/bin/sh

rm -rf ${BINARIES_DIR}/boot
mkdir -p ${BINARIES_DIR}/boot
cp -f ${BUILD_DIR}/linux-custom/arch/powerpc/boot/uImage ${BINARIES_DIR}/boot
cp -f ${BUILD_DIR}/linux-custom/arch/powerpc/boot/ucp1020.dtb ${BINARIES_DIR}/boot/image.dtb
mkcramfs -B ${BINARIES_DIR}/boot ${BINARIES_DIR}/boot.cramfs
rm -rf ${BINARIES_DIR}/boot
