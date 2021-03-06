# frozen_string_literal: true

module Types
  class ProductDetailType < BaseObject
    field :size, String, null: true
    field :color, String, null: true
    field :price, Int, null: false
    field :price_in_naira, String, null: false
    field :discounted_price_in_naira, String, null: false
    field :id, ID, null: false
    field :product, ProductType, null: false
    field :url_key, String, null: true
    field :quantity_in_stock, Integer, null: false
    field :quantity_sold, Integer, null: true
    field :product_available, Boolean, null: false
    field :discounted_price, Float, null: false
    field :times_viewed, Int, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
