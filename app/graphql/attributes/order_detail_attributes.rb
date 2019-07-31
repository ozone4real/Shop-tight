# frozen_string_literal: true

module Attributes
  class OrderDetailAttributes < Types::BaseInputObject
    argument :ship_date, GraphQL::Types::ISO8601DateTime, required: false
    argument :bill_date, GraphQL::Types::ISO8601DateTime, required: false
    argument :sales_tax, String, required: false
    argument :status, String, required: false
    argument :location, String, required: false
    argument :id, ID, required: true
  end
end
