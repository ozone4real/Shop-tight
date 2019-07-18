# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :products, [ProductType], null: false

    field :product, ProductType, null: false do
      argument :id, ID, required: true
    end

    field :user_cart, [CartType], null: true

    field :product_details, [ProductDetailType], null: false
    field :product_detail, ProductDetailType, null: false do
      argument :id, ID, required: true
    end

    field :categories, [CategoryType], null: false

    field :category, CategoryType, null: false do
      argument :id, ID, required: true
      description 'returns a single category'
    end

    def products
      Product.all
    end

    def product(id:)
      Product.find(id)
    end

    def categories
      Category.all
    end

    def category(id:)
      Category.find(id)
    end

    def product_details
      ProductDetail.all
    end

    def product_datail(id:)
      ProductDetail.find(id)
    end

    def user_cart
      return [] unless context[:current_user]

      Cart.where(user_id: context[:current_user])
    end
  end
end
