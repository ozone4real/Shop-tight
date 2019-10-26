# frozen_string_literal: true

class AddCategoryReference < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :category, foreign_key: true
  end
end
