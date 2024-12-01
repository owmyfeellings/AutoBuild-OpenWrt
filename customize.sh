#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================

pushd ./openwrt
sed -i 's/192.168.1.1/192.168.10.2/g' ./package/base-files/files/bin/config_generate
sed -i 's#$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.##g' ./package/lean/default-settings/files/zzz-default-settings
popd

pushd ./my-feeds
sed -i '/luci.main.mediaurlbase/d' $(find $(find ./ -name "luci-theme-kucat" -type d) \( -name "30_luci-kucat" -or -name "30_luci-kuacat" \) -type f)
popd
