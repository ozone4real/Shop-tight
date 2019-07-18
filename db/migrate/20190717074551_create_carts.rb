# frozen_string_literal: true

class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.references :product_detail, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
