# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include Authorize
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :orders, [OrderType], null: false
    field :sub_categories, [SubCategoryType], null: false
    field :best_selling_products, [ProductType], null: false do
      argument :limit, Int, required: false
      argument :page, Int, required: false
    end
    field :sub_category, SubCategoryType, null: false do
      argument :id, ID, required: true
      description 'returns a single category'
    end

    field :search_results, [ ProductType ], null: false do
      argument :query, String, required: true
      argument :limit, Int, required: false
      argument :page, Int, required: false 
    end

    field :order, OrderType, null: false do
      argument :id, ID, required: true
    end

    field :product_collection, [ProductType], null: false do
      argument :limit, Int, required: false
      argument :page, Int, required: false
      argument :sort_param, String, required: false
    end

    field :payment_options, [PaymentType], null: false

    field :clear_cart, function: Mutations::ClearCart.new


    field :similar_products, [ProductDetailType], null: false do
      argument :id, ID, required: true
    end

    field :product, ProductType, null: false do
      argument :id, ID, required: true
    end

    field :profile, UserType, null: true

    field :user_cart, [CartType], null: true

    field :total_price_without_charges, Int, null: false
    field :total_shipping_fee, Int, null: false

    field :product_details, [ProductDetailType], null: false
    field :product_detail, ProductDetailType, null: false do
      argument :id, ID, required: true
    end

    field :category_products, [ProductType], null: false do
      argument :category_id, ID, required: true
      argument :limit, Int, required: false
      argument :page, Int, required: false
      argument :sort_param, String, required: false
    end

    field :sub_category_products, [ProductType], null: false do
      argument :sub_category_id, ID, required: true
      argument :limit, Int, required: false
      argument :page, Int, required: false
      argument :sort_param, String, required: false
    end

    field :categories, [CategoryType], null: false

    field :category, CategoryType, null: false do
      argument :id, ID, required: true
      description 'returns a single category'
    end

    def product(id:)
      product = Product.find(id)
      product.increment!(:times_viewed)
      if context[:current_user]
        RedisService.add_to_set('recent_views', user_id: context[:current_user].id, product_id: id)
        # RecentlyViewedProduct.find_or_create_by(user_id: context[:current_user].id, product_id: id)
      end
      product
    end

    def profile
      context[:current_user]
    end

    def categories
      unless categories_cache = RedisService.get('categories_cache')
        categories_cache = Category.includes(:sub_categories).with_attached_picture
        RedisService.set('categories_cache', categories_cache)
      end
      categories_cache
    end

    def sub_categories
      unless sub_categories_cache = RedisService.get('sub_categories_cache')
        sub_categories_cache = SubCategory.includes(:category).with_attached_picture
        RedisService.set('sub_categories_cache', sub_categories_cache)
      end
      sub_categories_cache
    end

    def sub_category(id:)
      SubCategory.find(id)
    end

    def category(id:)
      Category.find(id)
    end

    def product_collection(page: 1, limit: 30, sort_param: 'created_at')
      unless Product.column_names.include?(sort_param)
        raise ExceptionHandler::BadRequest, "Invalid sort parameter: #{sort_param}"
      end

      unless collection = RedisService.get("product_collection:#{page}:#{sort_param}:#{limit}")
        collection = Product.includes(:product_details, :sub_category).with_attached_picture
                            .order("#{sort_param} DESC").limit(limit).offset((page - 1) * limit)
        RedisService.set("product_collection:#{page}:#{sort_param}", collection)
      end
      collection
    end

    def best_selling_products(page: 1, limit: 30)
      unless products = RedisService.get("best_selling_products:#{page}:#{limit}")
        products = Product.joins(:product_details).group(:id).order('SUM(product_details.quantity_sold) DESC')
                          .limit(limit).offset((page - 1) * limit).with_attached_picture
        RedisService.set("best_selling_products:#{page}", products)
      end
      products
    end

    def category_products(category_id:, page: 1, limit: 20, sort_param: 'created_at')
      Product.includes(:product_details).where(category_id: category_id).order("#{sort_param} DESC").page(page).per(limit)
    end

    def sub_category_products(sub_category_id:, page: 1, limit: 20, sort_param: 'created_at')
      Product.includes(:product_details)
             .where(sub_category_id: sub_category_id)
             .order("#{sort_param} DESC").page(page).per(limit)
    end

    def product_detail(id:)
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
      authorize_user
      context[:current_user].orders
    end

    def order(id:)
      authorize_user
      Order.find_by(user: context[:current_user], id: id)
    end

    def search_results(query:, limit: 30, page: 1)
      Product.search(query, page: page, per_page: limit, fields: ["product_name", "brand", "product_description^0.1"])
    end
  end
end
