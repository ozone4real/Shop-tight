# frozen_string_literal: true

class CreateRecentlyViewedProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :recently_viewed_products do |t|
      t.references :user, foreign_key: true
      t.references :product_detail, foreign_key: true

      t.timestamps
    end
    add_index :recently_viewed_products, %i[user_id product_detail_id], unique: true
  end
end
