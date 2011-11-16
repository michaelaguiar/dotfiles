export MACOSX_DEPLOYMENT_TARGET=10.6 \
CFLAGS="-arch x86_64" \
CXXFLAGS="-arch x86_64"
./configure --prefix=/usr/local/php5 \
--sysconfdir=/etc \
--with-config-file-path=/etc \
--with-apxs2 \
--with-libxml-dir \
--with-curl \
--with-gd \
--with-jpeg-dir=/usr/local/bin \
--with-zlib \
--enable-mbstring \
--with-mcrypt \
--with-pgsql \
--with-pdo-pgsql \
--enable-soap \
--enable-zip \
--with-pear