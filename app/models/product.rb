# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category
  has_many :product_details, class_name: 'ProductDetail', foreign_key: 'product_id', dependent: :destroy
  # validates_presence_of :unit_weight, on: :create, message: "can't be blank"
end
