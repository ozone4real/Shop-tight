# frozen_string_literal: true

class ProductDetail < ApplicationRecord
  belongs_to :product
  has_many :carts, dependent: :destroy
end
