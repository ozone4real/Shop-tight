# frozen_string_literal: true

module Types
  class ProductType < BaseObject
    field :id, ID, null: true
    field :product_name, String, null: false
    field :product_description, String, null: false
    field :price, Integer, null: false
    field :discount, Integer, null: true
    field :product_available, Boolean, null: false
    field :picture, String, null: false
    field :unit_weight, String, null: true
    field :category, CategoryType, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
