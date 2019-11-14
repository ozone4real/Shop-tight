# frozen_string_literal: true

module Mutations
  class CreateUser < BaseMutation
    argument :user_attributes,
             Attributes::UserAttributes::UserAttributesForCreate,
             required: true
    field :message, String, null: true
    field :user, Types::UserType, null: true
    field :token, String, null: true

    def resolve(**args)
      user = User.create!(args[:user_attributes].to_h)
      token = JsonWebToken.encode(email: user.email, id: user.id)
      response_data = { user: user, token: token,
                        message: "Successfully registered to Shop Tight.\
         Verify your account. A verification link has been sent to your mail" }

      UserMailer.with(user: user, token: token, http_origin: context[:request].headers['HTTP_ORIGIN'])
                .welcome_mailer.deliver_later
      response_data
    rescue StandardError => e
      puts "Tha error **************************************************", e.backtrace
      raise e if e.is_a? ActiveRecord::RecordInvalid
      response_data
    end
  end
end
