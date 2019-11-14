# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'shopright.mail@gmail.com'
  layout 'mailer'
end
