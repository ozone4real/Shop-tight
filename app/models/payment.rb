# frozen_string_literal: true

class Payment < ApplicationRecord
  validates_uniqueness_of :payment_type, on: :create, message: "already exists", case_sensitive: false
end
