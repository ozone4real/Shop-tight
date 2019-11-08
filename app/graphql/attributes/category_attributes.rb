# frozen_string_literal: true

module Attributes
  module CategoryAttributes
    class CategoryAttributesForCreate < Types::BaseInputObject
      argument :category_name, String, required: true
      argument :category_description, String, required: true
      argument :picture, Types::ImageUrl, required: false
    end
    class CategoryAttributesForUpdate < Types::BaseInputObject
      argument :id, ID, required: true
      argument :category_name, String, required: false
      argument :category_description, String, required: false
      argument :picture, Types::ImageUrl, required: false
    end
  end
end
