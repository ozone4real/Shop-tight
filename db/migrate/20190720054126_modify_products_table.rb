class ModifyProductsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :product_size, :integer
  end
end
