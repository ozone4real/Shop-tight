# frozen_string_literal: true

class OrderDetail < ApplicationRecord
  belongs_to :product_detail
  belongs_to :order
  enum status: { awaiting_delivery: 0, transiting: 1, delivered: 2, cancelled: 3, rejected: 4 }

  after_create :update_product_details

  def update_product_details
    product_detail.update(quantity_in_stock: product_detail.quantity_in_stock - quantity, quantity_sold: product_detail.quantity_sold + quantity)
  end
end
