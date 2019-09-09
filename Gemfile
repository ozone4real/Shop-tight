# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem 'carrierwave', '>= 2.0.0.rc', '< 3.0'
gem 'cloudinary'
gem 'jwt'
gem 'graphql-batch'
gem 'mailgun-ruby', '~>1.1.6'
gem 'sidekiq'
gem 'redis-namespace'
gem 'activestorage-cloudinary-service'
gem 'apollo_upload_server', '2.0.0.beta.1'

# Use ActiveStorage variant
gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'figaro'
gem 'graphql'
gem 'kaminari'
gem 'rack-cors'
gem 'rave_ruby'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'pg'
  gem 'pry', '~> 0.12.2'
  gem 'rspec-rails', '~> 3.7'
  gem 'rspec_junit_formatter'
  gem 'simplecov', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'graphiql-rails'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Seed data generator
  gem 'faker'
end

group :production do
  gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'rubocop', '~> 0.74.0', require: false
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
