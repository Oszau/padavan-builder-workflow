sed -i 's/ISP_INTERFACE=/ISP_INTERFACE=br0/' padavan-ng/trunk/user/nfqws/zapretsh-main/zapret/usr/share/zapret/config
cp -f zapret.sh padavan-ng/trunk/user/nfqws/zapretsh-main/zapret/usr/bin/zapret.sh
cp -f kernel-3.4.x.config padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
