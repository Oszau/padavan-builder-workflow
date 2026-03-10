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

sed -i '1335a\CONFIG_FSCACHE=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '1336a\CONFIG_FSCACHE_STATS=y' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '636a\CONFIG_NET_SCHED=y' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '637a\CONFIG_NET_SCH_CBQ=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '638a\CONFIG_NET_SCH_HTB=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '639a\CONFIG_NET_SCH_CSZ=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '640a\CONFIG_NET_SCH_PRIO=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '641a\CONFIG_NET_SCH_RED=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '642a\CONFIG_NET_SCH_SFQ=m'padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '643a\CONFIG_NET_SCH_TEQL=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '644a\CONFIG_NET_SCH_TBF=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '645a\CONFIG_NET_SCH_GRED=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '646a\CONFIG_NET_SCH_DSMARK=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '647a\CONFIG_NET_SCH_INGRESS=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '648a\CONFIG_NET_QOS=y' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '649a\CONFIG_NET_ESTIMATOR=y' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '650a\CONFIG_NET_CLS=y' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '651a\CONFIG_NET_CLS_TCINDEX=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '652a\CONFIG_NET_CLS_ROUTE4=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '653a\CONFIG_NET_CLS_ROUTE=y' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '654a\CONFIG_NET_CLS_FW=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '655a\CONFIG_NET_CLS_U32=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '656a\CONFIG_NET_CLS_RSVP=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '657a\CONFIG_NET_CLS_RSVP6=m' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
sed -i '658a\CONFIG_NET_CLS_POLICE=y' padavan-ng/trunk/configs/boards/$CONFIG_VENDOR/$CONFIG_FIRMWARE_PRODUCT_ID/kernel-3.4.x.config
