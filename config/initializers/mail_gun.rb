# frozen_string_literal: true

Mailgun.configure do |config|
  config.api_key = ENV['MAIL_GUN_KEY']
end
