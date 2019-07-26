# frozen_string_literal: true

class ProductDetail < ApplicationRecord
  mount_uploader :picture, ImageUploader
  belongs_to :product
  has_many :order_details, dependent: :destroy
  has_many :carts, dependent: :destroy
  before_update :update_product_available
  after_create :generate_url_key
  scope :is_available, -> { where(product_available: true) }

  def update_product_available
    update_columns(product_available: false) if quantity_in_stock.zero?
  end

  def generate_url_key
    self.url_key = "#{product.product_name} #{id}".parameterize
    save
  end
end
