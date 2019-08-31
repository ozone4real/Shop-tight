FROM ruby:2.6.0
COPY . /shop_tight
WORKDIR /shop_tight
RUN bundle install \
  && apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
CMD ["rails", "server"]