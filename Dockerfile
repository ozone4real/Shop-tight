FROM ruby:2.6.0
COPY . /shop_tight
WORKDIR /shop_tight
RUN bundle install \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt install -y nodejs
CMD ["rails", "server"]
# EXPOSE 5000