#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm
#=================================================

pushd ./openwrt
sed -i 's#$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.##g' ./package/lean/default-settings/files/zzz-default-settings
#sed -i 's/192.168.1.1/192.168.10.1/g' ./package/base-files/files/bin/config_generate
#sed -i 's/^\(PKG_VERSION:=\).*/\1main/' ./feeds/lienol/xray-core/Makefile
#sed -i 's/^\(PKG_HASH:=\).*/\1skip/' ./feeds/lienol/xray-core/Makefile
#sed -i 's/v$(PKG_VERSION)/main/' ./feeds/lienol/xray-core/Makefile
popd

pushd ./my-feeds
sed -i '/luci.main.mediaurlbase/d' $(find $(find ./ -name "luci-theme-kucat" -type d) \( -name "30_luci-kucat" -or -name "30_luci-kuacat" \) -type f)
popd
