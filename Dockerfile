FROM php:7.3.27-fpm

MAINTAINER Domingos Coelho <domingosjunior87@gmail.com>

ENV LD_LIBRARY_PATH /opt/oracle/instantclient_12_1/

RUN apt-get update && apt-get install -y unzip libaio1

RUN mkdir /opt/oracle
COPY oracle/instantclient-basic-linux.x64-12.1.0.2.0.zip /opt/oracle
COPY oracle/instantclient-sdk-linux.x64-12.1.0.2.0.zip /opt/oracle

# Install Oracle Instantclient
RUN unzip /opt/oracle/instantclient-basic-linux.x64-12.1.0.2.0.zip -d /opt/oracle \
    && unzip /opt/oracle/instantclient-sdk-linux.x64-12.1.0.2.0.zip -d /opt/oracle \
    && ln -s /opt/oracle/instantclient_12_1/libclntsh.so.12.1 /opt/oracle/instantclient_12_1/libclntsh.so \
    && ln -s /opt/oracle/instantclient_12_1/libclntshcore.so.12.1 /opt/oracle/instantclient_12_1/libclntshcore.so \
    && ln -s /opt/oracle/instantclient_12_1/libocci.so.12.1 /opt/oracle/instantclient_12_1/libocci.so \
    && rm -rf /opt/oracle/*.zip

# Install Oracle extensions
RUN echo 'instantclient,/opt/oracle/instantclient_12_1/' | pecl install oci8 \
    && docker-php-ext-enable oci8