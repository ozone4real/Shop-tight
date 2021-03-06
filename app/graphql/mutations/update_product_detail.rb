# frozen_string_literal: true

module Mutations
  class UpdateProductDetail < BaseMutation
    argument :product_detail_attributes,
             Attributes::ProductAttributes::ProductDetailsAttributesForUpdate, required: false
    field :product_detail, Types::ProductDetailType, null: false

    def resolve(**args)
      product_detail_args = args[:product_detail_attributes].to_h
      product_detail = ProductDetails.update(product_detail_args[:id], product_detail_args)
      { product_detail: product_detail }
    end
  end
end
