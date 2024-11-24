sed -i 's/ISP_INTERFACE=/ISP_INTERFACE=ppp0/' padavan-ng/trunk/user/nfqws/zapret/config
sed -i 's/TCP_PORTS=80,443/TCP_PORTS=443/' padavan-ng/trunk/user/nfqws/zapret/config
sed -i 's/--with-nghttp3/--without-nghttp3/' padavan-ng/trunk/libs/libcurl/Makefile
sed -i 's/--with-ngtcp2/--without-ngtcp2/' padavan-ng/trunk/libs/libcurl/Makefile
