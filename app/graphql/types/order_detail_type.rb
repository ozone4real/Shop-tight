# frozen_string_literal: true

module Types
  class OrderDetailType < Types::BaseObject
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
