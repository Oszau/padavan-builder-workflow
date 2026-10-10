rm -r  padavan-ng/trunk/user/dnsmasq
git clone https://github.com/nilabsent/padavan-ng.git /tmp/padavan-ng
cp -r /tmp/padavan-ng/trunk/user/dnsmasq padavan-ng/trunk/user/dnsmasq
ls -la padavan-ng/trunk/user/
ls -la padavan-ng/trunk/user/dnsmasq/

cp -f zapret.sh padavan-ng/trunk/user/nfqws/zapretsh-main/zapret/usr/bin/zapret.sh

cp ASUSddns.sh padavan-ng/trunk/user/optware/ASUSddns.sh
sed -i '13a\\t$(ROMFSINST) -p +x /usr/bin/ASUSddns.sh' padavan-ng/trunk/user/optware/Makefile

sed -i 's/# CONFIG_BC is not set/CONFIG_BC=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_FEATURE_CATN is not set/CONFIG_FEATURE_CATN=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_DIFF is not set/CONFIG_DIFF=y/' padavan-ng/trunk/configs/boards/busybox.config
sed -i 's/# CONFIG_XXD is not set/CONFIG_XXD=y/' padavan-ng/trunk/configs/boards/busybox.config
