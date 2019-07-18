# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :product_detail
  belongs_to :user
end
