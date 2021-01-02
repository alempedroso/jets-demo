FROM ruby:2.5.7

# ENV BUNDLE_PATH /bundle/vendor

RUN apt-get install libpq-dev
RUN gem install bundler
RUN gem install jets

COPY Gemfile /mydemo/
COPY Gemfile.lock /mydemo/

WORKDIR /mydemo

RUN bundle install
