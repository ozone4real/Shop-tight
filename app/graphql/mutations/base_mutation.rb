# frozen_string_literal: true

module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    include Authorize

    def user; context[:current_user]; end

    def total_price
      Cart.total_price_without_charges(user) +
        Cart.total_shipping_fee(user)
    end

    def user_cart
      @user_cart ||= Cart.user_cart(user)
    end

    def handle_empty_cart
      if user_cart.empty?
        raise ExceptionHandler::EmptyResource, 'Your cart is empty. Add some products to it.'
      end
    end

    def create_order(payment_id)
      order_details = user_cart.map do |product|
        {
          product_detail_id: product.product_detail_id,
          quantity: product.quantity,
          total_price: product.quantity * product.product_detail.discounted_price
        }
      end
      payload = { payment_id: payment_id, user: user, amount_payable: total_price, order_details_attributes: order_details }
      if Payment.find(payment_id).payment_type == 'Debit card'
        payload[:payment_made] = true
        payload[:payment_date] = DateTime.current
      end
      ActiveRecord::Base.transaction do
        @order = Order.create!(payload)
        user_cart.destroy_all
      end
    end
  end
end
