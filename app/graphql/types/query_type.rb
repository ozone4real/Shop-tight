# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
                               description: 'An example field added by the generator'
    def test_field
      'Hello World!'
    end

    field :products, [ProductType], null: false

    field :product, ProductType, null: false do
      argument :id, ID, required: true
    end


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
  end
end
