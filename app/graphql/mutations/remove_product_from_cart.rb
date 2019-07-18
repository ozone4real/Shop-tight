# frozen_string_literal: true

module Mutations
  class RemoveProductFromCart < BaseMutation
    argument :product_detail_id, ID, required: true
    field :cart, Types::CartType, null: true

    def resolve(product_detail_id:)
      authorize_user
      cart = Cart.find_by!(product_detail_id: product_detail_id, user_id: context[:current_user].id)
      cart.destroy
      {
        cart: cart
      }
    end
  end
end
