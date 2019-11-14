# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :user
  belongs_to :payment
  has_many :order_details, dependent: :destroy, foreign_key: 'order_id', inverse_of: :order
  enum status: { 'awaiting delivery' => 0, transiting: 1, delivered: 2, cancelled: 3, rejected: 4 }

  accepts_nested_attributes_for :order_details, allow_destroy: true

  def total_quantity
    order_details.sum(:quantity)
  end
end
