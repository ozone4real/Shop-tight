# frozen_string_literal: true

class ProductDetail < ApplicationRecord
  # mount_uploader :picture, ImageUploader
  belongs_to :product
  has_many :order_details, dependent: :destroy
  has_many :carts, dependent: :destroy
  before_update :update_product_available
  after_create { generate_url_key(product.product_name) }
  scope :is_available, -> { where(product_available: true) }

  def update_product_available
    update_columns(product_available: false) if quantity_in_stock.zero?
  end

  def discounted_price
    price - (product.discount * price / 100)
  end

  def price_in_naira
    "\u20A6#{number_with_delimiter(price)}"
  end
  
  def discounted_price_in_naira
    "\u20A6#{number_with_delimiter(discounted_price.to_i)}"
  end
end
