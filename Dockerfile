FROM debian:jessie
MAINTAINER Laszlo Budai <laszlo.budai@balabit.com>

RUN apt-get update
RUN apt-get install -y --force-yes wget

RUN wget http://download.opensuse.org/repositories/home:/laszlo_budai:/syslog-ng/Debian_8.0/Release.key
RUN apt-key add Release.key
RUN echo "deb http://download.opensuse.org/repositories/home:/laszlo_budai:/syslog-ng/Debian_8.0 ./" > /etc/apt/sources.list.d/syslog-ng-obs.list
RUN apt-get update

RUN apt-get install -y --force-yes \
	git \
	autoconf \
	automake \
	make \
	libtool \
	flex \
	libbison-dev \
	autoconf-archive \
	manpages-dev \
	zlib1g-dev \
	gcc \
	xsltproc docbook-xsl docbook \
	libevtlog-dev \
	libesmtp-dev \
	libivykis-dev \
	libglib2.0-dev \
	libnet1-dev \
	libdbi-dev \
	libssl-dev \
	libmongo-client-dev \
	libjson-c-dev \
	libwrap0-dev \
	libpcre3-dev \
	libcap-dev \
	libsystemd-daemon-dev \
	libsystemd-journal-dev \
	libgeoip-dev \
	geoip-database \
	libhiredis-dev \
	libriemann-client-dev \
	python2.7 \
	python-dev \
	python-setuptools \
	python-nose \
	pep8 \
	python-ply \
	pylint \
	openjdk-7-jdk \
	gradle-2.2.1 \
	libcurl4-openssl-dev \
	libxml2-utils \
	syslog-ng-java-compile-deps-mvn-repo \
	python-pip

COPY build.sh /
RUN chmod +x build.sh
