# frozen_string_literal: true

module Types
  class PaymentType < BaseObject
    field :payment_type, String, null: false
    field :description, String, null: false
    field :id, ID, null: false
    field :picture, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
