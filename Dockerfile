From ruby:3.0.0-alpine 

WORKDIR /app/
ADD Gemfile* ./

RUN apk update && apk add --virtual build-dependencies build-base
RUN apk add --no-cache --virtual=.build-deps \
  git openssh-client build-base mariadb-dev sqlite-libs sqlite-dev sqlite
RUN gem install bundler
RUN bundle install
ADD . .






