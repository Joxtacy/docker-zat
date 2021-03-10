FROM ruby:2.6.6-alpine
RUN gem install rake
RUN set -ex \
    && apk add --update \
        nodejs \
    && apk add --virtual build-dependencies \
        build-base \
        ruby-dev \
    && gem install zendesk_apps_tools -v 3.8.1 \
    && apk del build-dependencies \
    && rm -rf /var/cache/apk/*

WORKDIR /app

EXPOSE 4567
