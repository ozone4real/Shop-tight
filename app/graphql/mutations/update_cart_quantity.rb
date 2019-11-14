module Mutations
  class UpdateCartQuantity < BaseMutation
    argument :quantity, Int, required: true
    argument :product_detail_id, ID, required: true
    field :user_cart, [Types::CartType], null: false
    field :total_price_without_charges, Integer, null: true
    field :total_shipping_fee, Integer, null: true


    def resolve(product_detail_id:, quantity:)
      authorize_user
      cart = Cart.find_by!(product_detail_id: product_detail_id , user: context[:current_user])
      cart.update!(quantity: quantity)
      {user_cart: context[:current_user].carts.order(created_at: :desc),
      total_price_without_charges: Cart.total_price_without_charges(context[:current_user]),
      total_shipping_fee: Cart.total_shipping_fee(context[:current_user])
     }
    end
  end
end