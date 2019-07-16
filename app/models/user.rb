# frozen_string_literal: true

class User < ApplicationRecord
  column_names.each do |column|
    unless %w[created_at updated_at is_admin id].include?(column)
      validates_presence_of column, on: :create, message: "can't be blank"
    end
  end
  validates :email, uniqueness: { case_sensitive: false }, format: {
    with: /\A[A-Za-z0-9][\w.-][a-zA-Z0-9]+@(\w{2,}\.){1,2}[a-z]{2,20}\z/
  }
  validates :phone, format: {
    with: /\A\d{10,20}\z/
  }
  has_secure_password
end
