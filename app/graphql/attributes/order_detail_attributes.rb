# frozen_string_literal: true

module Attributes
  class OrderDetailAttributes < Types::BaseInputObject
    with_options required: false do
      argument :ship_date, GraphQL::Types::ISO8601DateTime
      argument :bill_date, GraphQL::Types::ISO8601DateTime
      argument :sales_tax, String
      argument :status, String
      argument :location, String
    end
    argument :id, ID, required: true
  end
end
