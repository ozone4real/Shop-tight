# frozen_string_literal: true

module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    include Authorize
    input_object_class Types::BaseInputObject

    def total_price
      Cart.total_price_without_charges(context[:current_user]) +
        Cart.total_shipping_fee(context[:current_user])
    end

    def handle_empty_cart
      @user_cart = Cart.user_cart(context[:current_user])
      if @user_cart.empty?
        raise ExceptionHandler::EmptyResource, 'Your cart is empty. Add some products to it.'
      end
    end

    def create_order(payment_id)
      payload = { payment_id: payment_id, user: context[:current_user], amount_payable: total_price }
      if Payment.find(payment_id).payment_type == "Debit card"
        payload[:payment_made] = true
        payload[:payment_date] = DateTime.current
      end
      @order = Order.create!(payload)
      order_details = @user_cart.map do |product|
        {
          product_detail_id: product.product_detail_id,
          quantity: product.quantity,
          total_price: product.quantity * product.product_detail.price
        }
      end
      order_details = @order.order_details.build(order_details)
      order_details.each(&:save!)
      @user_cart.destroy_all
    rescue StandardError => e
      @order&.destroy
      raise e
    end
  end
end
