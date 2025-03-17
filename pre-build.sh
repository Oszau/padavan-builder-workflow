sed -i 's/ISP_INTERFACE=/ISP_INTERFACE=br0/' padavan-ng/trunk/user/nfqws/zapret/config
#sed -i 's/TCP_PORTS=80,443/TCP_PORTS=443/' padavan-ng/trunk/user/nfqws/zapret/config
#cp -f exclude.list padavan-ng/trunk/user/nfqws/zapret/exclude.list
#cp -f strategy padavan-ng/trunk/user/nfqws/zapret/strategy
cp -f zapret.sh padavan-ng/trunk/user/nfqws/zapret.sh

cp -f padavan-ng/trunk/configs/boards/pt_ralink_16m.config padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/partitions.config
cp -f kernel-3.4.x.config padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config

cp ASUSddns.sh padavan-ng/trunk/user/optware/ASUSddns.sh
sed -i '13a\\t$(ROMFSINST) -p +x /usr/bin/ASUSddns.sh' padavan-ng/trunk/user/optware/Makefile
cp clear_RAM.sh padavan-ng/trunk/user/optware/clear_RAM.sh
sed -i '14a\\t$(ROMFSINST) -p +x /usr/bin/clear_RAM.sh' padavan-ng/trunk/user/optware/Makefile
cp qos.sh padavan-ng/trunk/user/optware/qos.sh
sed -i '15a\\t$(ROMFSINST) -p +x /usr/bin/qos.sh' padavan-ng/trunk/user/optware/Makefile
cp -f mtd_storage.sh padavan-ng/trunk/user/scripts/mtd_storage.sh

#cp -f Makefile_nfqws padavan-ng/trunk/user/nfqws/Makefile
#sed -i 's/size_tmp="8M"/size_tmp="10M"/' padavan-ng/trunk/user/scripts/dev_init.sh

#sed -i 's/--with-nghttp3/--without-nghttp3/' padavan-ng/trunk/libs/libcurl/Makefile
#sed -i 's/--with-ngtcp2/--without-ngtcp2/' padavan-ng/trunk/libs/libcurl/Makefile

cp -f defaults.c padavan-ng/trunk/user/shared/defaults.c
cp -f defaults.h padavan-ng/trunk/user/shared/defaults.h
cp -f firewall_ex.c padavan-ng/trunk/user/rc/firewall_ex.c

#rm -rf padavan-ng/trunk/user/inadyn
#cp -rf inadyn padavan-ng/trunk/user/inadyn
#rm padavan-ng/trunk/user/rc/services_ex.c
#cp services_ex.c padavan-ng/trunk/user/rc/services_ex.c

sed -i 's/# CONFIG_FEATURE_CATN is not set/CONFIG_FEATURE_CATN=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_CMP is not set/CONFIG_CMP=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_DIFF is not set/CONFIG_DIFF=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_NL is not set/CONFIG_NL=y/' padavan-ng/trunk/configs/boards/busybox.config

sed -i 's/# CONFIG_HEXDUMP is not set/CONFIG_HEXDUMP=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_HEXEDIT is not set/CONFIG_HEXEDIT=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_NC is not set/CONFIG_NC=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_NETCAT is not set/CONFIG_NETCAT=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_NC_SERVER is not set/CONFIG_NC_SERVER=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_NC_EXTRA is not set/CONFIG_NC_EXTRA=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_NC_110_COMPAT is not set/CONFIG_NC_110_COMPAT=y/' padavan-ng/trunk/configs/boards/busybox.config
