#!/usr/bin/env bash

DIR=$(readlink -enq $(dirname $0))
CFLAGS="-O2 -g3 -fno-strict-aliasing -std=gnu90";

install_phalcon7() {
	git clone https://github.com/dreamsxin/cphalcon7.git /tmp/cphalcon7
	cd /tmp/cphalcon7/ext;

	/usr/bin/phpize &> /dev/null
	./configure CFLAGS="-O2 -g" --silent --enable-phalcon &> /dev/null

	make --silent -j4 &> /dev/null
	make --silent install

	if [ -z $(php -m | grep phalcon) ]; then
        phpenv config-add "$DIR/phalcon.ini"
    fi
}

install_phalcon7

wait
