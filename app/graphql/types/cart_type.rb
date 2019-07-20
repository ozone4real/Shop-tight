# frozen_string_literal: true

module Types
  class CartType < BaseObject
    field :quantity, Int, null: false
    field :product_detail, ProductDetailType, null: false
  end
end
