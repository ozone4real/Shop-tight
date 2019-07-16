# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_description
      t.integer :price
      t.integer :discount
      t.integer :quantity_in_stock
      t.boolean :product_available
      t.string :picture
      t.float :unit_weight
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
