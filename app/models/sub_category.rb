# frozen_string_literal: true

class SubCategory < ApplicationRecord
  has_many_attached :picture
  belongs_to :category
  has_many :products
  validates :category_name, presence: true, uniqueness: { case_sensitive: false }
  after_create { generate_url_key(category_name) }
  after_commit { RedisService.delete('sub_categories_cache') }
end
