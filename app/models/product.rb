class Product < ApplicationRecord
  belongs_to :category
  has_many :product_details, class_name: "Product_detail", foreign_key: "product_id"
end
