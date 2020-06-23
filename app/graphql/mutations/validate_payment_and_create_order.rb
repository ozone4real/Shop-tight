# frozen_string_literal: true

module Mutations
  class ValidatePaymentAndCreateOrder < BaseMutation
    argument :otp, String, required: true
    argument :ref, String, required: true
    field :transaction_details, Types::TransactionCompletedResponseType, null: false
    field :order, Types::OrderType, null: true

    def resolve(**args)
      response = card.validate_charge(args[:ref], args[:otp])
      return { charge_response: response.transform_keys(&:underscore) } if response['error']

      charge_response = card.verify_charge(response['txRef'])
      charge_response.transform_keys!(&:underscore)
      return { transaction_details: charge_response } if charge_response['error']

      @user_cart = Cart.user_cart(context[:current_user])
      create_order(2)
      { transaction_details: charge_response, order: @order }
    end
  end

  private
  def card
    @rave ||= RaveRuby.new(ENV['RAVE_PUBLIC_KEY'], ENV['RAVE_SECRET_KEY'], Rails.env.production?)
    @card ||= Card.new(@rave)
  end
end
