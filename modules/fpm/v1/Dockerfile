FROM reg.travelata.lan:5000/travelata/php-cli-fpm-7.4.1-parallel-2020-01-14-01:latest
RUN apk update \
    && apk add wget git unzip autoconf automake file gcc g++ libc-dev make libcurl curl-dev \
    && pecl install xdebug-2.9.4
RUN echo "date.timezone=\"Europe/Moscow\"" >> /usr/local/etc/php/php-cli.ini && \
    echo "zend_extension=xdebug.so" >> /usr/local/etc/php/php-cli.ini && \
    echo "xdebug.remote_enable=1" >> /usr/local/etc/php/php-cli.ini && \
    echo "xdebug.remote_host=host.docker.internal" >> /usr/local/etc/php/php-cli.ini && \
    echo "xdebug.remote_port=9074" >> /usr/local/etc/php/php-cli.ini && \
    echo "date.timezone=\"Europe/Moscow\"" >> /usr/local/etc/php/php-fpm.ini && \
    echo "zend_extension=xdebug.so" >> /usr/local/etc/php/php-fpm.ini && \
    echo "xdebug.remote_enable=1" >> /usr/local/etc/php/php-fpm.ini && \
    echo "xdebug.remote_host=host.docker.internal" >> /usr/local/etc/php/php-fpm.ini && \
    echo "xdebug.remote_port=9074" >> /usr/local/etc/php/php-fpm.ini
CMD /usr/local/sbin/php-fpm -c /usr/local/etc/php/php-fpm.ini