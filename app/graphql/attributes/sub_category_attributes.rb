# frozen_string_literal: true

module Attributes
  module SubCategoryAttributes
    class SubCategoryAttributesForCreate < Types::BaseInputObject
      argument :category_id, ID, required: true
      argument :category_name, String, required: true
      argument :category_description, String, required: true
      argument :picture, Types::ImageUrl, required: false
    end

    class SubCategoryAttributesForUpdate < Types::BaseInputObject
      argument :id, ID, required: true
      argument :category_id, ID, required: false
      argument :category_name, String, required: false
      argument :category_description, String, required: false
      argument :picture, Types::ImageUrl, required: false
    end
  end
end
