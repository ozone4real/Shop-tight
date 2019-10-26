# frozen_string_literal: true

class Category < ApplicationRecord
  has_many_attached :picture
  has_many :products, class_name: 'Product', foreign_key: 'category_id', dependent: :destroy
  has_many :sub_categories, dependent: :destroy
  validates :category_name, presence: true, uniqueness: { case_sensitive: false }
  after_create { generate_url_key(category_name) }
end
