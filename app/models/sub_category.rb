class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :products
  after_create { generate_url_key(category_name)  }
end
