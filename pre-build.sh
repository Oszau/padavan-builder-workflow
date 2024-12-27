sed -i 's/ISP_INTERFACE=/ISP_INTERFACE=ppp0/' padavan-ng/trunk/user/nfqws/zapret/config
sed -i 's/TCP_PORTS=80,443/TCP_PORTS=443/' padavan-ng/trunk/user/nfqws/zapret/config

#rm padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/partitions.config
#cp padavan-ng/trunk/configs/boards/pt_ralink_8m.config padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/partitions.config
#cp pt_ralink_8m_ministor.config padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/partitions.config

#sed -i 's/--with-nghttp3/--without-nghttp3/' padavan-ng/trunk/libs/libcurl/Makefile
#sed -i 's/--with-ngtcp2/--without-ngtcp2/' padavan-ng/trunk/libs/libcurl/Makefile
sed -i 's:$(ROMFSINST) $(SRC_NAME)/build/https_dns_proxy /usr/sbin/doh_proxy2:$(ROMFSINST) -s /usr/sbin/doh_proxy /usr/sbin/doh_proxy2:' padavan-ng/trunk/user/doh_proxy/Makefile

sed -i '12s/.*/COPTS = $(CPUFLAGS) -Os $(filter-out -O%, $(CFLAGS))/' padavan-ng/trunk/libs/libssl-1.1/Makefile
sed -i '12s/.*/COPTS = $(CPUFLAGS) -Os $(filter-out -O%, $(CFLAGS))/' padavan-ng/trunk/libs/libssl-3.1/Makefile
sed -i '12s/.*/COPTS = $(CPUFLAGS) -Os $(filter-out -O%, $(CFLAGS))/' padavan-ng/trunk/libs/libssl-3.3/Makefile
#sed -i '244s/.*/HOSTCFLAGS   = -Wall -Wmissing-prototypes -Wstrict-prototypes -Os -fomit-frame-pointer -std=gnu8/' padavan-ng/trunk/linux-3.4.x/Makefile
#sed -i '245s/.*/HOSTCXXFLAGS = -Os/' padavan-ng/trunk/linux-3.4.x/Makefile
#sed -i '573s/.*/KBUILD_CFLAGS   += -Os -fno-reorder-blocks -fno-tree-ch/' padavan-ng/trunk/linux-3.4.x/Makefile

sed -i 's/# CONFIG_HEXDUMP is not set/CONFIG_HEXDUMP=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_HEXEDIT is not set/CONFIG_HEXEDIT=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_NC is not set/CONFIG_NC=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_NETCAT is not set/CONFIG_NETCAT=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_NC_SERVER is not set/CONFIG_NC_SERVER=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_NC_EXTRA is not set/CONFIG_NC_EXTRA=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_NC_110_COMPAT is not set/CONFIG_NC_110_COMPAT=y/' padavan-ng/trunk/configs/boards/busybox.config

#rm -rf padavan-ng/trunk/user/inadyn
#cp -rf inadyn padavan-ng/trunk/user/inadyn

sed -i 's/#define BOARD_GPIO_BTN_RESET/#undef BOARD_GPIO_BTN_RESET/' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/board.h
#sed -i 's/#define BOARD_GPIO_BTN_WPS/#undef BOARD_GPIO_BTN_WPS/' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/board.h
#sed -i 's/GPIO_BTN_RESET/#GPIO_BTN_RESET/' padavan-ng/uboot/mips/profiles/asus_rt-n56u/.config
