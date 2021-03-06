#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.219/g' package/base-files/files/bin/config_generate

#添加luci-app-ssr-plus-jo
#git clone https://github.com/brokeld/luci-app-ssr-plus-jo  package/luci-app-ssr-plus-jo
#git clone https://github.com/Ameykyl/my  package/my
#echo "listen-address=::1,127.0.0.11" > package/base-files/files/etc/dnsmasq.conf
#
[ -d "package/ccx" ] && rm -rf package/ccx
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/ccx/luci-app-adguardhome
#git clone https://github.com/rohu168/smartdns.git  package/ccx/smartdns
git clone https://github.com/pymumu/smartdns.git package/ccx/smartdns
git clone https://github.com/Apocalypsor/luci-app-smartdns.git package/ccx/luci-app-smartdns
git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/ccx/luci-app-koolproxyR
git clone https://github.com/rosywrt/luci-theme-rosy.git package/ccx/luci-theme-rosy
git clone https://github.com/vernesong/OpenClash.git package/ccx/OpenClash