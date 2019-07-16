# frozen_string_literal: true

module Mutations
  class CreateCategory < BaseMutation
    argument :category_name, String, required: true
    argument :category_description, String, required: true

    field :category, Types::CategoryType, null: false
    field :errors, [String], null: true

    def resolve(**args)
      category = Category.new(args)
      if category.save
        {
          category: category,
          errors: nil
        }
      else
        {
          category: nil,
          errors: category.errors.full_messages
        }
      end
    end
  end
end
