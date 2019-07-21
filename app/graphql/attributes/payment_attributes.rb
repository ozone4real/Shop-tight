# frozen_string_literal: true

module Attributes
  class PaymentAttributes < Types::BaseInputObject
    argument :payment_type, String, required: true
    argument :description, String, required: true
    argument :picture, String, required: false
  end
end
