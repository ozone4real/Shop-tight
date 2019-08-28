class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :products
  validates :category_name, presence: true, uniqueness: { case_sensitive: false }
  after_create { generate_url_key(category_name)  }
end
