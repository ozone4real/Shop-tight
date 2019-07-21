# frozen_string_literal: true

module Mutations
  class RemoveProductFromCart < BaseMutation
    argument :product_detail_id, ID, required: true
    argument :all, Boolean, required: false
    field :product_removed, Types::CartType, null: true
    field :message, String, null: true

    def resolve(product_detail_id:, all: false)
      authorize_user
      cart = Cart.find_by!(product_detail_id: product_detail_id, user: context[:current_user])
      if all
        cart.destroy
        return {
          product_removed: cart,
          message: "Products successfully removed from cart"
        }
      end
      product_removed = cart.decrement!(:quantity)
      product_removed.destroy if product_removed.quantity <= 0
      {
        product_removed: product_removed,
        message: "Product successfully removed from cart"
      }
    end
  end
end
