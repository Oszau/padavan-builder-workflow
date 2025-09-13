cp -f zapret.sh padavan-ng/trunk/user/nfqws/zapretsh-main/zapret/usr/bin/zapret.sh

cp -f kernel-3.4.x.config padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config

#cp ASUSddns.sh padavan-ng/trunk/user/optware/ASUSddns.sh
#sed -i '13a\\t$(ROMFSINST) -p +x /usr/bin/ASUSddns.sh' padavan-ng/trunk/user/optware/Makefile
#cp clear_RAM.sh padavan-ng/trunk/user/optware/clear_RAM.sh
#sed -i '14a\\t$(ROMFSINST) -p +x /usr/bin/clear_RAM.sh' padavan-ng/trunk/user/optware/Makefile

sed -i 's/# CONFIG_FEATURE_CATN is not set/CONFIG_FEATURE_CATN=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_CMP is not set/CONFIG_CMP=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_DIFF is not set/CONFIG_DIFF=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_NL is not set/CONFIG_NL=y/' padavan-ng/trunk/configs/boards/busybox.config

sed -i 's/# CONFIG_HEXDUMP is not set/CONFIG_HEXDUMP=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_HEXEDIT is not set/CONFIG_HEXEDIT=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_NC is not set/CONFIG_NC=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_NETCAT is not set/CONFIG_NETCAT=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_NC_SERVER is not set/CONFIG_NC_SERVER=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_NC_EXTRA is not set/CONFIG_NC_EXTRA=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_NC_110_COMPAT is not set/CONFIG_NC_110_COMPAT=y/' padavan-ng/trunk/configs/boards/busybox.config
