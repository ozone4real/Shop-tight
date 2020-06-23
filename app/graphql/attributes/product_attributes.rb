# frozen_string_literal: true

module Attributes
  module ProductAttributes
    class ProductDetailsAttributesForCreate < Types::BaseInputObject
      with_options required: false do
        argument :size, String, required: false
        argument :color, String, required: false
        argument :product_id, ID, required: false
      end
      with_options required: true do
        argument :price, Int
        argument :quantity_in_stock, Integer
      end
    end

    class ProductAttributesForCreate < Types::BaseInputObject
      with_options required: true do
        argument :sub_category_id, ID
        argument :product_name, String
        argument :product_description, String
        argument :product_size, Types::ProductSizeOptions
        argument :product_details_attributes, [ProductDetailsAttributesForCreate]
        argument :brand, String
      end
      with_options required: false do
        argument :discount, Float
        argument :picture, Types::ImageUrl
        argument :unit_weight, String
      end
    end

    class ProductDetailsAttributesForUpdate < Types::BaseInputObject
      with_options required: false do
        argument :id, ID
        argument :size, String
        argument :color, String
        argument :price, Int
        argument :quantity_in_stock, Integer
        argument :product_id, ID
      end
    end

    class ProductAttributesForUpdate < Types::BaseInputObject
      with_options required: true do
        argument :id, ID  
        argument :product_details_attributes, [ProductDetailsAttributesForUpdate]
      end

      with_options required: false do
        argument :sub_category_id, ID
        argument :product_name, String
        argument :product_description, String
        argument :discount, Float
        argument :picture, Types::ImageUrl
        argument :unit_weight, String
        argument :brand, String
        argument :product_size, Types::ProductSizeOptions
      end
    end
  end
end
