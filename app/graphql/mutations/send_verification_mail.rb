module Mutations
  class SendVerificationMail < BaseMutation
    field :message, String, null: true

    def resolve
      authorize_user
      current_user, request = context.to_h.values_at(:current_user, :request)
      UserMailer.with(user: current_user, token: request.headers['HTTP_X_AUTH_TOKEN'], http_origin: context[:request].headers['HTTP_ORIGIN'])
                .welcome_mailer.deliver_later
      
      { message: "A verification link has been sent to your email. Follow it to verify your account" }
    end
  end
end