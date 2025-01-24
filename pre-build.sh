sed -i 's/ISP_INTERFACE=/ISP_INTERFACE=br0/' padavan-ng/trunk/user/nfqws/zapret/config
#sed -i 's/TCP_PORTS=80,443/TCP_PORTS=443/' padavan-ng/trunk/user/nfqws/zapret/config

#rm padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/partitions.config
#cp padavan-ng/trunk/configs/boards/pt_ralink_8m.config padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/partitions.config
##cp pt_ralink_8m_ministor.config padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/partitions.config

cp ASUSddns.sh padavan-ng/trunk/user/optware/ASUSddns.sh
sed -i '13a\\t$(ROMFSINST) -p +x /usr/bin/ASUSddns.sh' padavan-ng/trunk/user/optware/Makefile
#cp clear_RAM.sh padavan-ng/trunk/user/optware/clear_RAM.sh
#sed -i '14a\\t$(ROMFSINST) -p +x /usr/bin/clear_RAM.sh' padavan-ng/trunk/user/optware/Makefile
#cp mtd_storage.sh padavan-ng/trunk/user/scripts/mtd_storage.sh

#sed -i '222a\\tif [ ! -f "$dir_crond/$USER" ]; then' padavan-ng/trunk/user/scripts/mtd_storage.sh
#sed -i '223a\\t\tcat > "$USER" <<EOF' padavan-ng/trunk/user/scripts/mtd_storage.sh
#sed -i '224a\# Uncomment for use ASUSddns' padavan-ng/trunk/user/scripts/mtd_storage.sh
#sed -i '225a\#*/5 * * * * /usr/bin/ASUSddns.sh $(nvram get wan_hwaddr) $(nvram get secret_code) $(nvram get rt_ssid) update logger' padavan-ng/trunk/user/scripts/mtd_storage.sh
#sed -i '226a\# Uncomment for clear RAM cache minimal %' padavan-ng/trunk/user/scripts/mtd_storage.sh
#sed -i '227a\#*/30 * * * * /usr/bin/clear_RAM.sh 15' padavan-ng/trunk/user/scripts/mtd_storage.sh
#sed -i '228a\\nEOF' padavan-ng/trunk/user/scripts/mtd_storage.sh
#sed -i '229a\\tfi\n' padavan-ng/trunk/user/scripts/mtd_storage.sh

#sed -i 's/size_tmp="8M"/size_tmp="12M"/' padavan-ng/trunk/user/scripts/dev_init.sh

#sed -i 's/--with-nghttp3/--without-nghttp3/' padavan-ng/trunk/libs/libcurl/Makefile
#sed -i 's/--with-ngtcp2/--without-ngtcp2/' padavan-ng/trunk/libs/libcurl/Makefile
sed -i 's:$(ROMFSINST) $(SRC_NAME)/build/https_dns_proxy /usr/sbin/doh_proxy2:$(ROMFSINST) -s /usr/sbin/doh_proxy /usr/sbin/doh_proxy2:' padavan-ng/trunk/user/doh_proxy/Makefile

#sed -i '12s/.*/COPTS = $(CPUFLAGS) -Os $(filter-out -O%, $(CFLAGS))/' padavan-ng/trunk/libs/libssl-1.1/Makefile
#sed -i '12s/.*/COPTS = $(CPUFLAGS) -Os $(filter-out -O%, $(CFLAGS))/' padavan-ng/trunk/libs/libssl-3.1/Makefile
#sed -i '12s/.*/COPTS = $(CPUFLAGS) -Os $(filter-out -O%, $(CFLAGS))/' padavan-ng/trunk/libs/libssl-3.3/Makefile
#sed -i '244s/.*/HOSTCFLAGS = -Wall -Wmissing-prototypes -Wstrict-prototypes -Os -fomit-frame-pointer -std=gnu89/' padavan-ng/trunk/linux-3.4.x/Makefile
#sed -i '245s/.*/HOSTCXXFLAGS = -Os/' padavan-ng/trunk/linux-3.4.x/Makefile
#sed -i '573s/.*/KBUILD_CFLAGS += -Os -fno-reorder-blocks -fno-tree-ch/' padavan-ng/trunk/linux-3.4.x/Makefile

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
