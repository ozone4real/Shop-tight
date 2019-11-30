module Attributes
  class SortAttributes < Types::BaseInputObject
    argument :price, Types::OrderOptions, required: false
    argument :quantity_sold, Types::OrderOptions, required: false
    argument :created_at, Types::OrderOptions, required: false
  end
end