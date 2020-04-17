#!/bin/bash
# STR=$(grep 'github.com/Lienol/openwrt-package' feeds.conf.default)
# if [ -z  "$STR" ];then
#   echo "src-git lienol https://github.com/Lienol/openwrt-package" >> feeds.conf.default
# fi
sed -i 's/\#src-git helloworld/\src-git helloworld/g' ./feeds.conf.default
echo "src-git lienol https://github.com/rohu168/openwrt-package" >> feeds.conf.default

./scripts/feeds clean
./scripts/feeds update -a
rm -rf feeds/lienol/lienol/v2ray
rm -rf feeds/lienol/lienol/openssl1.1
rm -rf feeds/lienol/lienol/trojan
rm -rf feeds/lienol/lienol/ipt2socks
rm -rf feeds/lienol/lienol/shadowsocks-libev-new
rm -rf feeds/lienol/lienol/shadowsocksr-libev
rm -rf feeds/lienol/lienol/pdnsd-alt
rm -rf feeds/lienol/package/verysync
rm -rf feeds/lienol/lienol/luci-app-verysync
rm -rf feeds/lienol/package/kcptun
#rm -rf package/lean/kcptun
rm -rf package/lean/luci-app-kodexplorer
rm -rf package/lean/luci-app-pppoe-relay
rm -rf package/lean/luci-app-pptp-server
rm -rf package/lean/luci-app-v2ray-server

./scripts/feeds install -a
