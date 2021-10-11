#!/bin/sh
set -e

sudo apt --yes install software-properties-common gnupg gosu curl ca-certificates zip unzip git supervisor sqlite3 libcap2-bin libpng-dev python2
sudo add-apt-repository --yes ppa:ondrej/php

sudo apt --yes update && sudo apt --yes upgrade

sudo apt --yes install php8.0-cli php8.0-dev php8.0-pgsql php8.0-sqlite3 php8.0-gd php8.0-curl php8.0-memcached php8.0-imap php8.0-mysql php8.0-mbstring php8.0-xml php8.0-zip php8.0-bcmath php8.0-soap php8.0-intl php8.0-readline php8.0-pcov php8.0-msgpack php8.0-igbinary php8.0-ldap php8.0-redis php8.0-swoole php8.0-xdebug
sudo php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer
