apt update
apt install -y gcc-multilib

cp -f pt_ralink_8m_ministor.config padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/partitions.config

#sed -i 's/# CONFIG_FEATURE_CATN is not set/CONFIG_FEATURE_CATN=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/# CONFIG_DIFF is not set/CONFIG_DIFF=y/' padavan-ng/trunk/configs/boards/busybox.config

#sed -i 's/CONFIG_IPCALC is not set/CONFIG_IPCALC=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/CONFIG_FEATURE_IPCALC_LONG_OPTIONS is not set/CONFIG_FEATURE_IPCALC_LONG_OPTIONS=y/' padavan-ng/trunk/configs/boards/busybox.config
#sed -i 's/CONFIG_FEATURE_IPCALC_FANCY is not set/CONFIG_FEATURE_IPCALC_FANCY=y/' padavan-ng/trunk/configs/boards/busybox.config
