# frozen_string_literal: true

module Attributes
  class ProductAttributes < Types::BaseInputObject
    argument :sub_category_id, ID, required: true
    argument :product_name, String, required: true
    argument :product_description, String, required: true
    argument :discount, Integer, required: false
    argument :picture, String, required: false
    argument :unit_weight, String, required: false
    argument :brand, String, required: true
    argument :product_size, Types::ProductSizeOptions, required: true
  end

  class ProductDetailAttributes < Types::BaseInputObject
    argument :size, String, required: false
    argument :color, String, required: false
    argument :price, Int, required: true
    argument :id, ID, required: false
    argument :quantity_in_stock, Integer, required: true
    argument :product_id, ID, required: false
    argument :quantity_in_stock, Integer, required: true
  end
end
