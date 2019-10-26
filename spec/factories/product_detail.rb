# frozen_string_literal: true

FactoryBot.define do
  factory :product_detail do
    color { 'black' }
    price { 235_500 }
    quantity_in_stock { 7 }
  end
end
