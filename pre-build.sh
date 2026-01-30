cp -f zapret.sh padavan-ng/trunk/user/nfqws/zapretsh-main/zapret/usr/bin/zapret.sh

cp -f pt_ralink_8m_ministor.config padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/partitions.config
cp -f kernel-3.4.x.config padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
#cp -f board.h padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/board.h

sed -i 's/SRC_NAME=dnsmasq-2.91/SRC_NAME=dnsmasq-2.92/' padavan-ng/trunk/user/dnsmasq/Makefile

#sed -i 's/SRC_VER = 71.4/SRC_VER = 72.5/' padavan-ng/trunk/user/nfqws/Makefile
#sed -i 's/SRC_VER = 71.4/SRC_VER = 72.7/' padavan-ng/trunk/user/nfqws/Makefile
sed -i 's/SRC_VER = 71.4/SRC_VER = 72.9/' padavan-ng/trunk/user/nfqws/Makefile

cp ASUSddns.sh padavan-ng/trunk/user/optware/ASUSddns.sh
sed -i '13a\\t$(ROMFSINST) -p +x /usr/bin/ASUSddns.sh' padavan-ng/trunk/user/optware/Makefile
#cp clear_RAM.sh padavan-ng/trunk/user/optware/clear_RAM.sh
#sed -i '14a\\t$(ROMFSINST) -p +x /usr/bin/clear_RAM.sh' padavan-ng/trunk/user/optware/Makefile
#cp strategy.sh padavan-ng/trunk/user/optware/strategy.sh
#sed -i '15a\\t$(ROMFSINST) -p +x /usr/bin/strategy.sh' padavan-ng/trunk/user/optware/Makefile
#cp -f sysinfo padavan-ng/trunk/user/optware/sysinfo
#sed -i '14a\\t$(ROMFSINST) -p +x /usr/bin/sysinfo' padavan-ng/trunk/user/optware/Makefile

cp -f mtd_storage_mod.sh padavan-ng/trunk/user/scripts/mtd_storage.sh
cp -f defaults_mod.c padavan-ng/trunk/user/shared/defaults.c
cp -f defaults_mod.h padavan-ng/trunk/user/shared/defaults.h

sed -i 's/# CONFIG_FEATURE_CATN is not set/CONFIG_FEATURE_CATN=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_DIFF is not set/CONFIG_DIFF=y/' padavan-ng/trunk/configs/boards/busybox.config
