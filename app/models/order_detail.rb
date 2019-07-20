# frozen_string_literal: true

class OrderDetail < ApplicationRecord
  belongs_to :product
  belongs_to :order
  enum status: {awaiting_delivery: 0, transiting: 1, delivered: 2}
end
