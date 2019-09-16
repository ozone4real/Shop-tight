# frozen_string_literal: true

class Product < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_many_attached :picture
  belongs_to :category
  belongs_to :sub_category
  belongs_to :user, -> { where 'is_admin = true' }
  has_many :product_details, class_name: 'ProductDetail', foreign_key: 'product_id', dependent: :destroy, inverse_of: :product
  enum product_size: { portable: 0, large: 1, bulky: 2 }
  after_create { generate_url_key(product_name) }

  accepts_nested_attributes_for :product_details, allow_destroy: true

  before_create :set_shipping_fee

  def images(host) 
    if picture.attached?
      unless Rails.env.production?
        return picture.map {|pic| rails_blob_url(pic, host: host)} 
      end     
      picture.map(&:service_url)
    end
  end

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
end
