# frozen_string_literal: true

module Mutations
  class AddProductToCart < BaseMutation
    argument :product_detail_id, ID, required: true
    field :cart, Types::CartType, null: true

    def resolve(product_detail_id:)
      authorize_user
      cart = context[:current_user].carts.build(product_detail_id: product_detail_id)
      cart.save!
      { cart: cart }
    end
  end
end
