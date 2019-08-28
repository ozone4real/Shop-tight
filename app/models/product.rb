# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category
  belongs_to :sub_category
  belongs_to :user, -> { where 'is_admin = true' }
  has_many :product_details, class_name: 'ProductDetail', foreign_key: 'product_id', dependent: :destroy
  enum product_size: { portable: 0, large: 1, bulky: 2 }

  before_create :set_shipping_fee
  after_create { generate_url_key(product_name)  }

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
