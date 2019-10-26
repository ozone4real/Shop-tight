# frozen_string_literal: true

module Attributes
  class ProductAttributes < Types::BaseInputObject
    def self.args(required_value)
      argument :id, ID, required: false
      argument :sub_category_id, ID, required: required_value && true
      argument :product_name, String, required: required_value && true
      argument :product_description, String, required: required_value && true
      argument :discount, Float, required: required_value && false
      argument :picture, Types::ImageUrl, required: required_value && false
      argument :unit_weight, String, required: required_value && false
      argument :brand, String, required: required_value && true
      argument :product_size, Types::ProductSizeOptions, required: required_value && true
      argument :product_details_attributes, [ProductDetailsAttributes.args(required_value)], required: true
      self
    end
  end

  class ProductDetailsAttributes < Types::BaseInputObject
    def self.args(required_value)
      argument :id, ID, required: false
      argument :size, String, required: required_value && false
      argument :color, String, required: required_value && false
      argument :price, Int, required: required_value && true
      argument :quantity_in_stock, Integer, required: required_value && true
      argument :product_id, ID, required: required_value && false
      self
    end
  end
end
