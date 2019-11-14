# frozen_string_literal: true

require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
require 'sprockets/railtie'
require 'rails/test_unit/railtie'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ShopTight
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.autoload_paths.push(Rails.root.join('app/graphql/helpers'))
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
    config.cache_store = :redis_cache_store, { url: 'redis://localhost:6379/0' }

    # config.active_storage.service = :cloudinary

    config.action_mailer.delivery_method = :sendgrid_actionmailer
    config.action_mailer.sendgrid_actionmailer_settings = {
      api_key: ENV['SENDGRID_API_KEY'],
      raise_delivery_errors: true
    }
    # config.action_mailer.mailgun_settings = {
    #   api_key: ENV['MAIL_GUN_KEY'],
    #   domain: 'sandbox13cae1a005a3440287d311de2fcc2c22.mailgun.org'
    # }
  end
end
