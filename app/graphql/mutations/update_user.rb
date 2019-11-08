# frozen_string_literal: true

module Mutations
  class UpdateUser < BaseMutation
    argument :user_attributes,
             Attributes::UserAttributes::UserAttributesForUpdate,
             required: true

    field :message, String, null: false
    field :user, Types::UserType, null: false

    def resolve(**args)
      authorize_user
      user = context[:current_user]
      user.update!(args[:user_attributes].to_h)
      { message: "Profile Successfully Updated", user: user }
    end
  end
end
