sed -i 's/ISP_INTERFACE=/ISP_INTERFACE=ppp0/' padavan-ng/trunk/user/nfqws/zapret/config
sed -i 's/TCP_PORTS=80,443/TCP_PORTS=443/' padavan-ng/trunk/user/nfqws/zapret/config
ln -sf padavan-ng/trunk/configs/boards/pt_ralink_8m.config padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/partitions.config
sed -i 's/$(ROMFSINST) /etc_ro/ca-certificates.crt/#$(ROMFSINST) /etc_ro/ca-certificates.crt/' padavan-ng/trunk/libs/libssl-1.1/Makefile
sed -i 's/$(ROMFSINST) /etc_ro/ca-certificates.crt/#$(ROMFSINST) /etc_ro/ca-certificates.crt/' padavan-ng/trunk/libs/libssl-3.1/Makefile
sed -i 's/$(ROMFSINST) /etc_ro/ca-certificates.crt/#$(ROMFSINST) /etc_ro/ca-certificates.crt/' padavan-ng/trunk/libs/libssl-3.3/Makefile
