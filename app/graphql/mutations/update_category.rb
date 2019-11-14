# frozen_string_literal: true

module Mutations
  class UpdateCategory < BaseMutation
    argument :category_attributes, type: Attributes::CategoryAttributes::CategoryAttributesForUpdate,
                                   required: true
    field :category, Types::CategoryType, null: false

    def resolve(**args)
      authorize_admin
      category_args = args[:category_attributes].to_h
      category = Category.update(category_args[:id], category_args)
      { category: category }
    end
  end
end
