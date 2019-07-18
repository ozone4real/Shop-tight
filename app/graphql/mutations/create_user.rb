# frozen_string_literal: true

module Mutations
  class CreateUser < BaseMutation
    argument :user_attributes, Attributes::UserAttributes, required: true
    field :user, Types::UserType, null: true
    field :token, String, null: false

    def resolve(**args)
      user = User.create!(args[:user_attributes].to_h)
      token = JsonWebToken.encode(email: user.email, id: user.id)
      { user: user, token: token }
    end
  end
end
