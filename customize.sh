#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.1.254/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf

########### 更改大雕源码（可选）###########
#sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=5.19/g' target/linux/x86/Makefile
sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=5.4/g' openwrt/target/linux/x86/Makefile

#echo "src-git ssrp https://github.com/fw876/helloworld.git" >> openwrt/feeds.conf.default

        
