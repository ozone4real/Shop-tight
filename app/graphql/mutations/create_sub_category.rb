# frozen_string_literal: true

module Mutations
  class CreateSubCategory < BaseMutation
    argument :category_name, String, required: true
    argument :category_description, String, required: true
    argument :category_id, ID, required: true
    argument :picture, String, required: false

    field :sub_category, Types::SubCategoryType, null: false

    def resolve(**args)
      authorize_admin
      sub_category = SubCategory.create!(args)
      { sub_category: sub_category }
    end
  end
end
