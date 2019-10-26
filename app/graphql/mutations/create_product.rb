# frozen_string_literal: true

module Mutations
  class CreateProduct < BaseMutation
    argument :product_attributes, Attributes::ProductAttributes.args(true), required: true
    field :product, Types::ProductType, null: true
    def resolve(**args)
      authorize_admin
      product_args = args[:product_attributes].to_h
      product_args[:category] = SubCategory.find(product_args[:sub_category_id]).category
      product = Product.create!(**product_args, user: context[:current_user])
      {
        product: product
      }
    rescue ActiveRecord::RecordInvalid => e
      product&.destroy
      raise e
    end
  end
end
