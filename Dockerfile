FROM ruby:2.7.1-alpine

RUN apk update
RUN apk upgrade
RUN apk add --update build-base ruby-dev

RUN gem update --system
RUN gem install bundler

ENV APP_HOME /rack_app
WORKDIR $APP_HOME

ADD Gemfile $APP_HOME/Gemfile
ADD Gemfile.lock $APP_HOME/Gemfile.lock
RUN bundle install

RUN mkdir -p $APP_HOME/tmp
ADD . $APP_HOME/

CMD ["rackup"]
