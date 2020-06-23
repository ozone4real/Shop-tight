# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :product_detail
  has_one :product, through: :product_detail
  belongs_to :user

  def self.user_cart(user)
    return [] unless user

    Cart.where(user: user).order(created_at: :desc)
  end

  def sub_total_for_product_in_naira
    "\u20A6#{number_with_delimiter(sub_total_for_product)}"
  end

  def discounted_sub_total_for_product_in_naira
    "\u20A6#{number_with_delimiter(discounted_sub_total_for_product)}"
  end

  def discounted_sub_total_for_product
    quantity * product_detail.discounted_price
  end

  def sub_total_for_product
    quantity * product_detail.price
  end

  def self.total_price_without_charges(user)
    return 0 if user_cart(user).empty?

    user_cart(user).joins(product_detail: :product).sum('( product_details.price - (products.discount * product_details.price / 100) )  * quantity')
  end

  def self.total_shipping_fee(user)
    user_cart(user).joins(product_detail: :product).sum('products.shipping_fee * quantity')
  end
end
