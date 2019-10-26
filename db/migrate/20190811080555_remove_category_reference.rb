# frozen_string_literal: true

class RemoveCategoryReference < ActiveRecord::Migration[5.2]
  def change
    remove_reference :products, :category
  end
end
