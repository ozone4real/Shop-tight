class AddSubCategoryReference < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :sub_category , foreign_key: true
    add_column :sub_categories, :picture, :string
  end
end
