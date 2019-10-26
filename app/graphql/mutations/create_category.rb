# frozen_string_literal: true

module Mutations
  class CreateCategory < BaseMutation
    puts argument :category_attributes, type: Attributes::CategoryAttributes.args(true), required: true
    field :category, Types::CategoryType, null: false
    
    def resolve(**args)
      authorize_admin
      category = Category.create!(args[:category_attributes].to_h)
      { category: category }
    end
  end
end
