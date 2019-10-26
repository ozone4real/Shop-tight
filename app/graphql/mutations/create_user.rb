# frozen_string_literal: true

module Mutations
  class CreateUser < BaseMutation
    argument :user_attributes,
             Attributes::UserAttributes.user_args(required_value: true),
             required: true
    field :message, String, null: true
    field :user, Types::UserType, null: true
    field :token, String, null: true

    def resolve(**args)
      user = User.create!(args[:user_attributes].to_h)
      token = JsonWebToken.encode(email: user.email, id: user.id)
      responseData = { user: user, token: token,
                       message: "Successfully registered to Shop Tight.\
         Verify your account. A verification link has been sent to your mail" }
      UserMailer.with(user: user, token: token).welcome_mailer.deliver_now!
      response_data
    rescue StandardError => e
      raise e if e.is_a? ActiveRecord::RecordInvalid

      responseData
    end
  end
end
