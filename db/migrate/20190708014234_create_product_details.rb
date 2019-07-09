class CreateProductDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :product_details do |t|
      t.integer :size
      t.string :color
      t.integer :price
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
