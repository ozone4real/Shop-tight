# frozen_string_literal: true

module Types
  class CategoryType < BaseObject
    field :id, ID, null: false
    field :category_name, String, null: false
    field :category_description, String, null: false
    field :picture, String, null: true
    field :products, [ProductType], null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
