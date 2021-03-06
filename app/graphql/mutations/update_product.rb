# frozen_string_literal: true

module Mutations
  class UpdateProduct < BaseMutation
    argument :product_attributes,
             Attributes::ProductAttributes::ProductAttributesForUpdate,
             required: true
    field :product, Types::ProductType, null: true

    def resolve(**args)
      # binding.pry
      authorize_admin
      product_args = args[:product_attributes].to_h
      product = Product.update(product_args[:id], product_args)
      { product: product }
    end
  end
end
