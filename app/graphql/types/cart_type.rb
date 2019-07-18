# frozen_string_literal: true

module Types
  class CartType < BaseObject
    field :product_detail, ProductDetailType, null: false
  end
end
