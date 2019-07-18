# frozen_string_literal: true

module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    input_object_class Types::BaseInputObject
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
  end
end
