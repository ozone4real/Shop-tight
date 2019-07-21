# frozen_string_literal: true

module Mutations
  class AddProductToCart < BaseMutation
    argument :product_detail_id, ID, required: true
    field :product_added, Types::CartType, null: true

    def resolve(product_detail_id:)
      authorize_user
      cart = Cart.find_or_initialize_by(product_detail_id: product_detail_id,
                                        user: context[:current_user])

      unless cart.new_record?
        if cart.product_detail.quantity_in_stock <= cart.quantity
          raise GraphQL::ExecutionError,
                'The quantity of this product in your cart is already as much as the quantity in stock'
        end
        cart = cart.increment!(:quantity)
      end
      cart.save!
      { product_added: cart }
    end
  end
end
