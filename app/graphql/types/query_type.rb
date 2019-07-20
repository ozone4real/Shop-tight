# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include Authorize
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :products, [ProductType], null: false do
      argument :limit, Int, required: false
    end

    field :payment_options, [PaymentType], null: false

    field :clear_cart, function: Mutations::ClearCart.new

    field :product, ProductType, null: false do
      argument :id, ID, required: true
    end

    field :user_cart, [CartType], null: true
    
    field :total_price_without_charges, Int, null: false

    field :product_details, [ProductDetailType], null: false
    field :product_detail, ProductDetailType, null: false do
      argument :id, ID, required: true
    end

    field :categories, [CategoryType], null: false


    field :category, CategoryType, null: false do
      argument :id, ID, required: true
      description 'returns a single category'
    end

    def products(limit: nil)
      return Product.limit(limit) if limit
      Product.all
    end

    def product(id:)
      Product.find(id)
    end

    def categories
      Category.all
    end

    def category(id:)
      Category.find(id)
    end

    def product_details
      ProductDetail.all
    end

    def product_datail(id:)
      ProductDetail.find(id)
    end

    def user_cart
      return [] unless context[:current_user]

      Cart.where(user_id: context[:current_user])
    end

    def total_price_without_charges
      return 0 if user_cart.empty?
      user_cart.inject(0) {|acc, product| acc + product.product_detail.price * product.quantity }
    end

    def payment_options
      Payment.all
    end
  end
end
