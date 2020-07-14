 # jLinux
本项目基于linux-4.4进行开发，完全支持jLabSDR无线电实验平台<br>

## 编译环境
1. 宿主机操作系统：建议Ubuntu 16.04及以上版本 <br>
2. 交叉编译器：arm-linux-gnueabihf-gcc<br>
   交叉编译器版本：6.5.0 (Linaro GCC 6.5-2018.12)<br>
3. 设备树编译器版本：DTC 1.4.0<br>

## 操作步骤
1.  export PATH="/home/armtool/gcc-linaro-6.5.0-2018.12-i686_arm-linux-gnueabihf/bin:$PATH"  #注意修改成当前系统编译器所在路径 <br>
2. vim ./setenv 设置对应的ARCH 和 CROSS_COMPILE
3. source ./setenv
4. make   xilinx_zynq_jlab_defconfig
5. 修改文件 auto_com_uImage_cp.sh <br>
   #!/bin/bash
     make -j12 && make uImage LOADADDR=0x4000 && cp arch/arm/boot/uImage /home/tftpboot/ && cp arch/arm/boot/dts/system-top.dtb /your dir<br>
把your dir 更换成将要存放uImang 和 dts 文件路径<br>
6. source auto_com_uImage_cp.sh<br>
7. 启动方式参考jUboot <br>


## 运行环境
jLab实验平台 1.0<br>
![load picture failed](https://github.com/JFounderSDR/openSCA/blob/master/jLab%E5%AE%9E%E9%AA%8C%E5%B9%B3%E5%8F%B0.png)<br>


如对上述项目有疑问，可发邮件至yhl@onetek.net进行咨询。  

