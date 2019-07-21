# frozen_string_literal: true

module Mutations
  class CreateOrder < BaseMutation
    argument :payment_id, ID, required: true
    field :order, Types::OrderType, null: true

    def resolve(payment_id:)
      user_cart = Cart.user_cart(context[:current_user])
      if user_cart.empty?
        raise ExceptionHandler::EmptyResource, 'Your cart is empty. Add some products to it.'
      end

      total_price = Cart.total_price_without_charges(context[:current_user]) +
                    Cart.total_shipping_fee(context[:current_user])
      order = Order.create!(payment_id: payment_id, user: context[:current_user], amount_payable: total_price)
      order_details = user_cart.map do |product|
        {
          product_detail_id: product.product_detail_id,
          quantity: product.quantity,
          total_price: product.quantity * product.product_detail.price
        }
      end
      order_details = order.order_details.build(order_details)
      order_details.each(&:save!)
      user_cart.destroy_all
      { order: order }
    rescue StandardError => e
      order&.destroy
      raise e
    end
  end
end
