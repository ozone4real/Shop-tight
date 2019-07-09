class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.integer :quantity
      t.integer :total_price
      t.integer :size
      t.string :color
      t.string :status
      t.datetime :bill_date
      t.datetime :ship_date
      t.integer :charges
      t.float :sales_tax
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.integer :shipper_id

      t.timestamps
    end
  end
end
