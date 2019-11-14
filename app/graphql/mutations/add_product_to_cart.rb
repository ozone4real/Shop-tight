# frozen_string_literal: true

module Mutations
  class AddProductToCart < BaseMutation
    argument :product_detail_id, ID, required: true
    argument :quantity, Int, required: true
    field :user_cart, [Types::CartType], null: true
    field :total_price_without_charges, Integer, null: true
    field :total_shipping_fee, Integer, null: true

    def resolve(product_detail_id:, quantity:)
      authorize_user
      product_detail = ProductDetail.find_by(id: product_detail_id, product_available: true)
      raise GraphQL::ExecutionError, 'product not available' unless product_detail

      cart = Cart.find_or_initialize_by(product_detail: product_detail,
                                        user: context[:current_user])

      cart.quantity = cart.new_record? ? quantity : cart.quantity + quantity
      if product_detail.quantity_in_stock < cart.quantity
        raise GraphQL::ExecutionError,
              'The quantity of this product in your cart is already as much as the quantity in stock'
      end
      cart.save!
      { user_cart: context[:current_user].carts,
        total_price_without_charges: Cart.total_price_without_charges(context[:current_user]),
        total_shipping_fee: Cart.total_shipping_fee(context[:current_user]) }
    end
  end
end
