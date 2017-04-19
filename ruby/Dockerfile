FROM ubuntu:16.04
MAINTAINER Kai Kousa "kai.kousa@gmail.com"

ENV EDITOR nano

RUN apt-get update && apt-get install -y \
    net-tools \
    iputils-ping \
    wget \
    curl \
    nano \
    build-essential \
    software-properties-common \
    git \
    openssl \
    libssl-dev \
    libffi6 \
    libffi-dev \
    libxml2 \
    libxml2-dev \
    libxslt1-dev \
    mysql-client \
    libmysqlclient-dev

# add ruby repository
RUN add-apt-repository ppa:brightbox/ruby-ng

RUN apt-get update && apt-get install -y ruby2.4 ruby2.4-dev

RUN gem install bundler pkg-config
RUN bundle config build.nokogiri --use-system-libraries

ADD . /home/app

WORKDIR /home/app

RUN bundle

ENTRYPOINT bundle exec puma -p 80