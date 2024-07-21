#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================

echo "home dir is: "$HOME
echo "current dir is: "$PWD
#tree -a -C -f ./openwrt

pushd ./openwrt
sed -i 's/192.168.1.1/192.168.10.2/g' ./package/base-files/files/bin/config_generate
sed -i 's#$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.##g' ./package/lean/default-settings/files/zzz-default-settings
sed -i '/luci.main.mediaurlbase/d' ./package/feeds/luci/luci-theme-design/root/etc/uci-defaults/30_luci-theme-design
sed -i '/luci.main.mediaurlbase/d' ./package/feeds/infinityfreedom_ng/luci-theme-infinityfreedom-ng/files/11_luci-theme-infinityfreedom-ng
popd

pushd ./my-feeds
sed -i '/luci.main.mediaurlbase/d' $(find $(find ./ -name "luci-theme-atmaterial-ColorIcon" -type d) -name "30_luci-theme-atmaterial_ci" -type f)
sed -i '/luci.main.mediaurlbase/d' $(find $(find ./ -name "luci-theme-argon" -type d) -name "90_luci-theme-argon" -type f)
sed -i '/luci.main.mediaurlbase/d' $(find $(find ./ -name "luci-theme-edge" -type d) -name "30_luci-theme-edge" -type f)
sed -i '/luci.main.mediaurlbase/d' $(find $(find ./ -name "luci-theme-opentopd" -type d) -name "30_luci-theme-opentopd" -type f)
sed -i '/luci.main.mediaurlbase/d' $(find $(find ./ -name "luci-theme-neobird" -type d) -name "30_luci-theme-neobird" -type f)
sed -i '/luci.main.mediaurlbase/d' $(find $(find ./ -name "luci-theme-opentomcat" -type d) -name "30_luci-theme-opentomcat" -type f)
popd
