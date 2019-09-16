# frozen_string_literal: true

module Types
  class UserType < BaseObject
    field :email, String, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :address, String, null: false
    field :city, String, null: false
    field :state, String, null: false
    field :country, String, null: true
    field :phone, String, null: false
    field :verified, Boolean, null: false
    field :postal_code, String, null: true
    field :is_admin, Boolean, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
