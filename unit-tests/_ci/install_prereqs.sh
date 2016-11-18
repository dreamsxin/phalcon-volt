#!/usr/bin/env bash

DIR=$(readlink -enq $(dirname $0))
CFLAGS="-O2 -g3 -fno-strict-aliasing -std=gnu90";

install_phalcon7() {
	git clone https://github.com/dreamsxin/cphalcon7.git /tmp/cphalcon7
	cd /tmp/cphalcon7;

	$PHPIZE_BIN &> /dev/null
	./configure CFLAGS="-O2 -g" --silent --enable-phalcon &> /dev/null

	make --silent -j4 &> /dev/null
	make --silent install

	if [ -z $(php -m | grep phalcon) ]; then
        phpenv config-add "$DIR/phalcon.ini"
    fi
}

install_phalcon() {
	git clone https://github.com/dreamsxin/cphalcon.git /tmp/cphalcon
	cd /tmp/cphalcon;

	$PHPIZE_BIN &> /dev/null
	./configure CFLAGS="-O2 -g" --silent --enable-phalcon &> /dev/null

	make --silent -j4 &> /dev/null
	make --silent install

	if [ -z $(php -m | grep phalcon) ]; then
        phpenv config-add "$DIR/phalcon.ini"
    fi
}

if [ ${TRAVIS_PHP_VERSION} != "7.0" && ${TRAVIS_PHP_VERSION} != "7.1" && ${TRAVIS_PHP_VERSION} != "nightly" ]; then
    install_phalcon
else
    install_phalcon7
fi

wait
