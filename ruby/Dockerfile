FROM ruby:3.2-alpine3.17

ENV EDITOR nano

RUN apk add --update --no-cache \
    build-base

ADD . /home/app

WORKDIR /home/app

RUN bundle

EXPOSE 80

ENTRYPOINT bundle exec puma -p 80