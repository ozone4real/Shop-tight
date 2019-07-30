# frozen_string_literal: true

module Mutations
  class ValidatePayment < BaseMutation
    argument :otp, String, required: true
    argument :ref, String, required: true
    field :transaction_details, Types::TransactionCompletedResponseType, null: false

    def resolve(**args)
      rave = RaveRuby.new(ENV['RAVE_PUBLIC_KEY'], ENV['RAVE_SECRET_KEY'], Rails.env.production?)
      card = Card.new(rave)
      response = card.validate_charge(args[:ref], args[:otp])
      return { charge_response: response.transform_keys(&:underscore) } if response['error']

      charge_response = card.verify_charge(response['txRef'])
      charge_response.transform_keys!(&:underscore)
      { transaction_details: charge_response }
    end
  end
end
