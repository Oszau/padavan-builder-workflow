#sed -i 's/ISP_INTERFACE=/ISP_INTERFACE=br0/' padavan-ng/trunk/user/nfqws/zapretsh-main/zapret/usr/share/zapret/config
cp -f zapret.sh padavan-ng/trunk/user/nfqws/zapretsh-main/zapret/usr/bin/zapret.sh

cp -f kernel-3.4.x.config padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config

#cp ASUSddns.sh padavan-ng/trunk/user/optware/ASUSddns.sh
#sed -i '13a\\t$(ROMFSINST) -p +x /usr/bin/ASUSddns.sh' padavan-ng/trunk/user/optware/Makefile
#cp clear_RAM.sh padavan-ng/trunk/user/optware/clear_RAM.sh
#sed -i '14a\\t$(ROMFSINST) -p +x /usr/bin/clear_RAM.sh' padavan-ng/trunk/user/optware/Makefile
#cp qos.sh padavan-ng/trunk/user/optware/qos.sh
#sed -i '15a\\t$(ROMFSINST) -p +x /usr/bin/qos.sh' padavan-ng/trunk/user/optware/Makefile
#cp -f mtd_storage.sh padavan-ng/trunk/user/scripts/mtd_storage.sh

#cp -f defaults.c padavan-ng/trunk/user/shared/defaults.c
#cp -f defaults.h padavan-ng/trunk/user/shared/defaults.h
#cp -f firewall_ex.c padavan-ng/trunk/user/rc/firewall_ex.c

sed -i 's/# CONFIG_FEATURE_CATN is not set/CONFIG_FEATURE_CATN=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_CMP is not set/CONFIG_CMP=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_DIFF is not set/CONFIG_DIFF=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_NL is not set/CONFIG_NL=y/' padavan-ng/trunk/configs/boards/busybox.config
