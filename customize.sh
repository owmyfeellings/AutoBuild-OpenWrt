#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm
#=================================================

pushd ./openwrt
sed -i 's#$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.##g' ./package/lean/default-settings/files/zzz-default-settings
popd

pushd ./custom
sed -i 's#../../lang/rust/rust-package.mk#$(TOPDIR)/feeds/packages/lang/rust/rust-package.mk#g' $(find ./smartdns -name 'Makefile' -type f)
popd
