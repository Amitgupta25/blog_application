From ruby:3.0.0 AS rails-toolbox
# FROM rails:onbuild

RUN apt-get update
RUN mkdir -p $INSTALL_PATH

COPY Gemfile*

RUN gem install rails bundler

WORKDIR /app

EXPOSE 3000

  CMD ["rails", "server", "-b", "0.0.0.0"]


