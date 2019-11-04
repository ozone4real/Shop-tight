module Mutations
  class UpdateCartQuantity < BaseMutation
    argument :quantity, Int, required: true
    argument :cart_id, ID, required: true
    field :user_cart, [Types::CartType], null: false

    def resolve(cart_id:, quantity:)
      authorize_user
      cart = Cart.find_by!(id: cart_id , user: context[:current_user])
      cart.update!(quantity: quantity)
      {user_cart: context[:current_user].carts}
    end
  end
end