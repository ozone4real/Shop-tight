# frozen_string_literal: true

class Product < ApplicationRecord
  has_many_attached :picture
  belongs_to :category
  has_one :product_detail
  has_many :recently_viewed_products, dependent: :destroy
  belongs_to :user, -> { where 'is_admin = true' }
  has_many :product_details, class_name: 'ProductDetail', foreign_key: 'product_id', dependent: :destroy, inverse_of: :product
  enum product_size: { portable: 0, large: 1, bulky: 2 }
  after_create { generate_url_key(product_name) }
  searchkick suggest: [:product_name]
  scope :search_import, -> { includes(:product_details) }
  delegate :size, :color, :price, :product_id, :price_in_naira, :quantity_in_stock, :discounted_price, :discounted_price_in_naira, to: :product_detail
  # after_commit {RedisService.delete}

  accepts_nested_attributes_for :product_details, allow_destroy: true

  before_create :set_shipping_fee

  def set_shipping_fee
    self.shipping_fee = case product_size
                        when 'portable'
                          400
                        when 'large'
                          700
                        when 'bulky'
                          1000
    end
  end

  def search_data
    { product_name: product_name,
      brand: brand, product_description: product_description,
      discount: discount,
      price: product_details.blank? ? 0 : product_details.map(&:discounted_price).sum/product_details.length,
      quantity_sold: product_details.map(&:quantity_sold).sum,
      created_at: created_at
    }
  end

  def quantity_sold
    product_details.sum(:quantity_sold)
  end
end
