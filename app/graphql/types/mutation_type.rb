# frozen_string_literal: true

module Types
  class MutationType < BaseObject
    # field :create_product_detail, mutation: Mutations::CreateProductDetail
    field :remove_product_from_cart, mutation: Mutations::RemoveProductFromCart
    field :add_product_to_cart, mutation: Mutations::AddProductToCart
    field :create_product, mutation: Mutations::CreateProduct
    field :create_category, mutation: Mutations::CreateCategory
    field :create_user, mutation: Mutations::CreateUser
    field :sign_in_user, mutation: Mutations::SignInUser
  end
end
