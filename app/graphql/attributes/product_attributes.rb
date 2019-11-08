# frozen_string_literal: true

module Attributes
  module ProductAttributes
    class ProductDetailsAttributesForCreate < Types::BaseInputObject
      argument :size, String, required: false
      argument :color, String, required: false
      argument :price, Int, required: true
      argument :quantity_in_stock, Integer, required: true
      argument :product_id, ID, required: false
    end

    class ProductAttributesForCreate < Types::BaseInputObject
      argument :sub_category_id, ID, required: true
      argument :product_name, String, required:  true
      argument :product_description, String, required: true
      argument :discount, Float, required: false
      argument :picture, Types::ImageUrl, required: false
      argument :unit_weight, String, required: false
      argument :brand, String, required: true
      argument :product_size, Types::ProductSizeOptions, required: true
      argument :product_details_attributes, [ProductDetailsAttributesForCreate], required: true
    end

    class ProductDetailsAttributesForUpdate < Types::BaseInputObject
      argument :id, ID, required: false
      argument :size, String, required: false
      argument :color, String, required: false
      argument :price, Int, required: false
      argument :quantity_in_stock, Integer, required: false
      argument :product_id, ID, required: false
    end

    class ProductAttributesForUpdate < Types::BaseInputObject
      argument :id, ID, required: true
      argument :sub_category_id, ID, required: false
      argument :product_name, String, required: false
      argument :product_description, String, required: false
      argument :discount, Float, required: false
      argument :picture, Types::ImageUrl, required: false
      argument :unit_weight, String, required: false
      argument :brand, String, required: false
      argument :product_size, Types::ProductSizeOptions, required: false
      argument :product_details_attributes, [ ProductDetailsAttributesForUpdate ], required: true
    end
  end
end