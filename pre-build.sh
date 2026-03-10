#FOR 320b1
apt update
apt install -y gcc-multilib

#busybox
sed -i 's/# CONFIG_BC is not set/CONFIG_BC=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_FEATURE_CATN is not set/CONFIG_FEATURE_CATN=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_DIFF is not set/CONFIG_DIFF=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_IPCALC is not set/CONFIG_IPCALC=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_FEATURE_IPCALC_LONG_OPTIONS is not set/CONFIG_FEATURE_IPCALC_LONG_OPTIONS=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_FEATURE_IPCALC_FANCY is not set/CONFIG_FEATURE_IPCALC_FANCY=y/' padavan-ng/trunk/configs/boards/busybox.config

sed -i '1335 a CONFIG_FSCACHE=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '1336 a CONFIG_FSCACHE_STATS=y' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '1337 a CONFIG_NET_SCH_TBF=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '1338 a CONFIG_NET_QOS=y' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
