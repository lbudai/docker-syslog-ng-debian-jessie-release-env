#!/bin/bash -e

git clone https://github.com/balabit/syslog-ng
cd syslog-ng
pip install -r requirements.txt 
./autogen.sh
mkdir ../build && cd ../build
../syslog-ng/configure \
  --with-ivykis=internal \
  --with-mongoc=internal \
  --with-librabbitmq=internal \
  --enable-all-modules \
  --enable-manpages \
  --with-docbook=/usr/share/xml/docbook/stylesheet/docbook-xsl/manpages/docbook.xsl

make dist
make distcheck
