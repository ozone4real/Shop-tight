# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :products, class_name: 'Product', foreign_key: 'category_id', dependent: :destroy
  validates :category_name, presence: true, uniqueness: { case_sensitive: false }
end
