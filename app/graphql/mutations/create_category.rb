# frozen_string_literal: true

module Mutations
  class CreateCategory < BaseMutation
    argument :category_name, String, required: true
    argument :category_description, String, required: true

    field :category, Types::CategoryType, null: false

    def resolve(**args)
      authorize_admin
      category = Category.create!(args)
      { category: category }
    end
  end
end
