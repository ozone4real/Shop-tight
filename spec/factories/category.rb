# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    category_name { 'Mobile phones' }
    category_description { 'Mobile phones of different brands and specifications' }
  end
end
