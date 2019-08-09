# frozen_string_literal: true

module Mutations
  class CreateOrderWithoutPayment < BaseMutation
    argument :payment_id, ID, required: true
    field :order, Types::OrderType, null: true

    def resolve(payment_id: 1)
      authorize_verified_user
      handle_empty_cart
      create_order(payment_id)
      { order: @order }
    end
  end
end
