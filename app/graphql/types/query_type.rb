# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include Authorize
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :products, [ProductType], null: false do
      argument :limit, Int, required: false
    end

    field :orders, [OrderType], null: false

    field :order, OrderType, null: false do
      argument :id, ID, required: true
    end

    field :payment_options, [PaymentType], null: false

    field :clear_cart, function: Mutations::ClearCart.new

    field :similar_products, [ProductDetailType], null: false do
      argument :id, ID, required: true
    end

    field :product, ProductType, null: false do
      argument :id, ID, required: true
    end

    field :user_cart, [CartType], null: true

    field :total_price_without_charges, Int, null: false
    field :total_shipping_fee, Int, null: false

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

    def payment_options
      Payment.all
    end

    def user_cart
      Cart.user_cart(context[:current_user])
    end

    def total_price_without_charges
      Cart.total_price_without_charges(context[:current_user])
    end

    def similar_products(id:)
      product = ProductDetail.find(id).product
      category = product.category
      category.products.select do |item|
        return item.product_details unless item == product
      end
    end

    def total_shipping_fee
      Cart.total_shipping_fee(context[:current_user])
    end

    def orders
      context[:current_user].orders
    end

    def order(id:)
      Order.find_by(user: context[:current_user], id: id)
    end
  end
end
