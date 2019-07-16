# frozen_string_literal: true

module Types
  class MutationType < BaseObject
    # field :create_product_detail, mutation: Mutations::CreateProductDetail
    field :create_product, mutation: Mutations::CreateProduct
    field :create_category, mutation: Mutations::CreateCategory
    field :create_user, mutation: Mutations::CreateUser
    field :sign_in_user, mutation: Mutations::SignInUser
  end
end
