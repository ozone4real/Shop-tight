# frozen_string_literal: true

module Mutations
  class SignInUser < BaseMutation
    argument :email, String, required: true
    argument :password, String, required: true

    field :user, Types::UserType, null: true
    field :token, String, null: true

    def resolve(**args)
      user = User.find_by(email: args[:email])
      unless user&.authenticate(args[:password])
        raise ExceptionHandler::InvalidCredentials, 'Invalid email or password'
      end

      token = JsonWebToken.encode(email: user.email, id: user.id, is_admin: user.is_admin)
      {
        user: user,
        token: token
      }
    end
  end
end
