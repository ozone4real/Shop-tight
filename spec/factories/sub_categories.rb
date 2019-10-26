# frozen_string_literal: true

FactoryBot.define do
  factory :sub_category do
    # category { nil }
    category_name { 'MyString' }
    category_description { 'MyString' }
  end
end
