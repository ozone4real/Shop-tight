# frozen_string_literal: true

module Types
  class CartType < BaseObject
    field :id, ID, null: false
    field :quantity, Int, null: false
    field :product_detail, ProductDetailType, null: false
    field :discounted_sub_total_for_product, Int, null: false
    field :sub_total_for_product, Int, null: false
  end
end
