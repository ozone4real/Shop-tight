# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :user
  belongs_to :payment
  has_many :order_details, dependent: :destroy
end
