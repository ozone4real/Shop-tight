# frozen_string_literal: true

module Mutations
  class CreateSubCategory < BaseMutation
    argument :sub_category_attributes, Attributes::SubCategoryAttributes::SubCategoryAttributesForCreate, required: true

    field :sub_category, Types::SubCategoryType, null: false

    def resolve(**args)
      authorize_admin
      sub_category = SubCategory.create!(args[:sub_category_attributes].to_h)
      { sub_category: sub_category }
    end
  end
end
