# frozen_string_literal: true

module Attributes
  module CategoryAttributes
    class CategoryAttributesForCreate < Types::BaseInputObject
      with_options required: true do
        argument :category_name, String
        argument :category_description, String
      end
      with_options required: false do
        argument :picture, Types::ImageUrl
        argument :parent_id, ID
      end
    end
    class CategoryAttributesForUpdate < Types::BaseInputObject
      argument :id, ID, required: true
      with_options required: false do
        argument :category_name, String
        argument :category_description, String
        argument :picture, Types::ImageUrl
      end
    end
  end
end
