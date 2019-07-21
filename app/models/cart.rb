# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :product_detail
  belongs_to :user

  def self.user_cart(user)
    return [] unless user

    Cart.where(user: user)
  end

  def self.total_price_without_charges(user)
    return 0 if user_cart(user).empty?
    user_cart(user).inject(0) {|acc, product| acc + product.product_detail.price * product.quantity }
  end

  def self.total_shipping_fee(user)
    user_cart(user).inject(0) {|acc, product|
       acc + product.product_detail.product.shipping_fee *
        product.quantity }
  end
end
