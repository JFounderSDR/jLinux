#!/bin/bash

make -j12 && make uImage LOADADDR=0x4000 && cp arch/arm/boot/uImage /home/tftpboot/ && cp arch/arm/boot/dts/system-top.dtb /home/tftpboot/
echo "copy img and dtb to tftp dir"
