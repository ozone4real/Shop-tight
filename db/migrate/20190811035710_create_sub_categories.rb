class CreateSubCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_categories do |t|
      t.references :category, foreign_key: true
      t.string :category_name
      t.string :category_description

      t.timestamps
    end
  end
end
