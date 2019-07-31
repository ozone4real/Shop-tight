# frozen_string_literal: true

module Types
  class OrderDetailType < Types::BaseObject
    field :quantity, Integer, null: false
    field :total_price, Integer, null: false
    field :status, Types::DeliveryStatus, null: false
    field :id, ID, null: false
    field :order, OrderType, null: false
    field :location, String, null: true
    field :productDetail, ProductDetailType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
