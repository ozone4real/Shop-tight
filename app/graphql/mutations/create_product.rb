# frozen_string_literal: true

module Mutations
  class CreateProduct < BaseMutation
    argument :product_attributes, Attributes::ProductAttributes, required: true
    argument :product_detail_attributes, [Attributes::ProductDetailAttributes], required: true
    field :product, Types::ProductType, null: true
    field :product_details, [Types::ProductDetailType], null: true

    def resolve(**args)
      authorize_admin
      product = Product.create!(**args[:product_attributes].to_h, user: context[:current_user])
      product_details = product.product_details.build(args[:product_detail_attributes].map(&:to_h))
      product_details.each(&:save!)
      {
        product: product,
        product_details: product_details
      }
    rescue ActiveRecord::RecordInvalid => e
      product&.destroy
      raise e
    end
  end
end
