# frozen_string_literal: true

module Types
  class ProductType < BaseObject
    field :id, ID, null: true
    field :product_name, String, null: false
    field :product_description, String, null: false
    field :discount, Float, null: true
    field :images, [String], null: true, resolve: lambda { |obj, _args, ctx|
                                                    obj.images(ctx[:request].host_with_port)
                                                  }
    field :unit_weight, String, null: true
    field :url_key, String, null: false
    field :category, CategoryType, null: false
    field :sub_category, SubCategoryType, null: false
    field :shipping_fee, Integer, null: false
    field :product_size, ProductSizeOptions, null: false
    field :product_details, [ProductDetailType], null: false
    field :brand, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
