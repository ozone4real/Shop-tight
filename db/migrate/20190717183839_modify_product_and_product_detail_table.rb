# frozen_string_literal: true

class ModifyProductAndProductDetailTable < ActiveRecord::Migration[5.2]
  def change
    remove_columns :products, :price, :product_available
    add_column :product_details, :product_available, :boolean, default: true
  end
end
