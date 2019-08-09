# frozen_string_literal: true

module Authorize
  def authorize_admin
    unless context[:current_user]&.is_admin?
      raise ExceptionHandler::UnAuthorized, "You don't have the credentials to access this resource"
    end
  end

  def authorize_user
    unless context[:current_user]
      raise ExceptionHandler::InvalidToken, 'Token verification failed'
    end
  end

  def authorize_verified_user
    authorize_user
    unless context[:current_user].verified?
      raise ExceptionHandler::UnAuthorized, 'Please verify your account'
    end
  end
end
