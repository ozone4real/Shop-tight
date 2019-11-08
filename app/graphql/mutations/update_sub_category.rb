# frozen_string_literal: true

module Mutations
  class UpdateSubCategory < BaseMutation
    argument :sub_category_attributes, type: Attributes::SubCategoryAttributes::SubCategoryAttributesForUpdate,
             required: true
    field :sub_category, Types::SubCategoryType, null: false

    def resolve(**args)
      authorize_admin
      sub_category_args = args[:sub_category_attributes].to_h
      sub_category = SubCategory.update(sub_category_args[:id], sub_category_args)
      { sub_category: sub_category }
    end
  end
end
