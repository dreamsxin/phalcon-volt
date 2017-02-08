Volt Template Engine
====================

Volt template engine from [Phalcon](https://github.com/phalcon/cphalcon/), Designer friendly and fast template engine for PHP written in Zephir/C.

Get Started
-----------

Volt is written in [Zephir/C](http://zephir-lang.com/) with platform independence in mind.

### Linux/Unix/Mac

On a Unix-based platform you can easily compile and install the extension from sources.

#### Requirements

Prerequisite packages are:

* PHP 5.5.x/5.6.x/7.0.x development resources (PHP 5.3 and 5.4 are no longer supported)
* GCC compiler (Linux/Solaris/FreeBSD) or Xcode (MacOS)
* [`re2c`](http://re2c.org)
* Phalcon7

Ubuntu:

```bash
sudo apt-get install re2c php5-dev libpcre3-dev gcc make
```

General Compilation
-------------------

Follow these instructions to generate a binary extension for your platform:

```bash
git clone https://github.com/dreamsxin/phalcon7-zephir.git
cd zephir
sudo ./install

git clone https://github.com/dreamsxin/volt.git
cd volt
../zephir/bin/zephir compile
cd ext
make
make install
```

Add the extension to your php.ini:

```bash
extension=volt.so
```

Finally, **restart the web server**.

External Links
--------------

* [Zephir](http://zephir-lang.com/)

Current Build Status
--------------------

Phalcon Framework is built under the Travis CI service. Every commit pushed to this repository will queue a build into the continuous integration service and will run all PHPUnit tests to ensure that everything is going well and the project is stable. The current build status is:

[![Build Status](https://travis-ci.org/dreamsxin/volt.svg?branch=master)](https://travis-ci.org/dreamsxin/volt)

License
-------
Volt is open source software licensed under the New BSD License. See the docs/LICENSE.txt file for more
