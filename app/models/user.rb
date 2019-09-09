# frozen_string_literal: true

class User < ApplicationRecord
  has_many :products, foreign_key: 'user_id', dependent: :destroy
  has_many :carts, foreign_key: 'user_id', dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :recently_viewed_products, dependent: :destroy
  column_names.each do |column|
    unless %w[created_at updated_at is_admin id verified].include?(column)
      validates_presence_of column, on: :create, message: "can't be blank"
    end
  end
  validates :email, uniqueness: { case_sensitive: false }, format: {
    with: /\A[A-Za-z0-9][\w.-]+[a-zA-Z0-9]@(\w{2,}\.){1,2}[a-z]{2,20}\z/
  }

  validates :password, format: {
    with: /\A(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]{8,})\z/
  }
  validates :phone, format: {
    with: /\A\d{10,20}\z/
  }
  has_secure_password

  # def total_price_of_items_in_cart
  #   carts
  # end
end
