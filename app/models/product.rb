# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user, -> { where 'user.is_admin = true' }
  has_many :product_details, class_name: 'ProductDetail', foreign_key: 'product_id', dependent: :destroy
end
