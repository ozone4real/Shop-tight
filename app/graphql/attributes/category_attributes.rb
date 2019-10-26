# frozen_string_literal: true

module Attributes
  class CategoryAttributes < Types::BaseInputObject
    def self.args(required_value)
      argument :id, ID, required: false
      argument :category_name, String, required: required_value && true
      argument :category_description, String, required: required_value && true
      argument :picture, Types::ImageUrl, required: required_value && false
      self
    end
  end
end
