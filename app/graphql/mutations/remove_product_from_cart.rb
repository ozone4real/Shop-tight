# frozen_string_literal: true

module Mutations
  class RemoveProductFromCart < BaseMutation
    argument :id, ID, required: true
    argument :all, Boolean, required: false
    field :user_cart, [Types::CartType], null: true
    field :message, String, null: true

    def resolve(id:, all: false)
      authorize_user
      cart = Cart.find_by!(id: id, user: context[:current_user])
      if all
        cart.destroy
        return {
          user_cart: context[:current_user].carts,
          message: 'Products successfully removed from cart'
        }
      end
      product_removed = cart.decrement!(:quantity)
      product_removed.destroy if product_removed.quantity <= 0
      {
        product_removed: product_removed,
        message: 'Product successfully removed from cart'
      }
    end
  end
end
