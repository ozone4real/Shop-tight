# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def welcome_mailer
    @user, @token = params.values_at(:user, :token)
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to shop tight')
  end
end
