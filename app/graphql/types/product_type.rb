# frozen_string_literal: true

module Types
  class ProductType < BaseObject
    field :id, ID, null: true
    field :product_name, String, null: false
    field :product_description, String, null: false
    field :discount, Integer, null: true
    field :picture, String, null: false
    field :unit_weight, String, null: true
    field :url_key, String, null: false
    field :category, CategoryType, null: true
    field :sub_category, SubCategoryType, null: false
    field :shipping_fee, Integer, null: false
    field :product_size, ProductSizeOptions, null: false
    field :product_details, [ProductDetailType], null: false
    field :brand, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
