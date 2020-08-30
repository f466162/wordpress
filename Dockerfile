FROM wordpress

RUN yes '' | pecl install apcu && \
    docker-php-ext-enable --ini-name 0-apc.ini apcu && \
    echo "" >> /usr/local/etc/php/conf.d/0-apc.ini && \
    echo "apc.shm_size=64M" >> /usr/local/etc/php/conf.d/0-apc.ini

