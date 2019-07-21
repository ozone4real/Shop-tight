# frozen_string_literal: true

module Mutations
  class CreatePaymentOption < BaseMutation
    argument :payment_attributes, Attributes::PaymentAttributes, required: true
    field :payment_option, Types::PaymentType, null: true

    def resolve(**args)
      payment_option = Payment.create!(args[:payment_attributes].to_h)
      { payment_option: payment_option }
    end
  end
end
