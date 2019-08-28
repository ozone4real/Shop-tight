module Attributes
  class CategoryAttributes < Types::BaseInputObject
    def self.category_args(required_value:)
      argument :category_name, String, required: required_value && true
      argument :category_description, String, required: required_value && true
      argument :picture, String, required: required_value && false
      self
    end
  end
end