# frozen_string_literal: true

class ProductDetail < ApplicationRecord
  belongs_to :product
  validates_presence_of :color, on: :create, message: "can't be blank"
end
