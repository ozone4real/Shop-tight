# frozen_string_literal: true

module Types
  class OrderType < Types::BaseObject
    field :id, ID, null: false
    field :payment, PaymentType, null: false
    field :order_details, [OrderDetailType], null: false
    field :amount_payable, Integer, null: false
    field :payment_date, GraphQL::Types::ISO8601DateTime, null: false
    field :payment_made, Boolean, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
