FROM php:7.0-fpm

# Software Installation
RUN apt-get update && apt-get install -y \
        wget \
        git \
        zip \
        nodejs \
        npm

# Create a symbolic link for node
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Install the PHP pdo_mysql extention
RUN docker-php-ext-install pdo_mysql

WORKDIR /code

# Install Composer
ADD composer-setup.sh /composer-setup.sh
RUN chmod +x /composer-setup.sh
RUN /composer-setup.sh

# Install Xdebug
RUN pecl install xdebug && \
    docker-php-ext-enable xdebug
