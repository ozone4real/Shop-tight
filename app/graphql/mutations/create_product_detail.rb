# frozen_string_literal: true

module Mutations
  class CreateProductDetail < BaseMutation
    field :product_detail, Types::ProductDetailType, null: false
    field :errors, String, null: true

    argument :size, String, required: false
    argument :color, String, required: false
    argument :price, Int, required: true
    argument :id, ID, required: false
    argument :quantity_in_stock, Integer, required: true
    argument :product_id, ID, required: true

    def resolve(**args)
      product = Product.find(args[:product_id])
      product_detail = product.product_details.build(args)
      if product_detail.save
        {
          product_detail: product_detail,
          errors: nil
        }
      else {
        product_detail: nil,
        errors: product_detail.errors.full_messages
      }
      end
    end
  end
end
