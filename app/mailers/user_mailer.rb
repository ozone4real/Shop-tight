# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def welcome_mailer
    @user, @token, @http_origin = params.values_at(:user, :token, :http_origin)
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to shop tight')
  end
end
