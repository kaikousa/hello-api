FROM ruby:2.7.2-alpine3.12
MAINTAINER Kai Kousa "kai.kousa@gmail.com"

ENV EDITOR nano

RUN apk add --update --no-cache \
    build-base

ADD . /home/app

WORKDIR /home/app

RUN bundle

ENTRYPOINT bundle exec puma -p 80