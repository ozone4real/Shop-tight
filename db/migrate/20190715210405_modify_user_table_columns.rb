class ModifyUserTableColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :phone, :string
    change_column :users, :postal_code, :string
  end
end
