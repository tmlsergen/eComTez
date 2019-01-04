FROM debian:9.5

MAINTAINER Sergen Temel & Onur Sezer <tmlsergen@gmail.com>

RUN apt-get update && \
    apt-get -y upgrade

RUN apt-get install -y aptitude
RUN aptitude install -y wget
RUN aptitude install -y git
RUN aptitude install -y unzip

RUN apt-get -y install apt-transport-https lsb-release ca-certificates && \
    wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && \
    sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list' && \
    apt-get update

RUN aptitude install -y php7.2-fpm
RUN aptitude install -y php7.2-mbstring
RUN aptitude install -y php7.2-xml
RUN aptitude install -y php7.2-pdo-mysql
RUN aptitude install -y php7.2-gd

RUN aptitude install -y nginx

RUN useradd -m eCom -s /bin/bash && \
    runuser -l eCom -c 'mkdir laravel' && \
    runuser -l eCom -c 'mkdir log'

RUN rm /etc/nginx/sites-enabled/default
RUN rm /etc/nginx/sites-available/default

COPY ./script/install-composer.sh /root/install-composer.sh
RUN sh /root/install-composer.sh

COPY ./script/entrypoint.sh /root/entrypoint.sh