# frozen_string_literal: true

module Mutations
  class UpdateUser < BaseMutation
    argument :user_attributes,
             Attributes::UserAttributes.user_args(required_value: false),
             required: true

    field :user, Types::UserType, null: false

    def resolve(**args)
      authorize_user
      user = User.update(context[:current_user].id, args[:user_attributes].to_h)
      { user: user }
    end
  end
end
