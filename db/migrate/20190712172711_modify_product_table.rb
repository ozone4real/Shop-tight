# frozen_string_literal: true

class ModifyProductTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :quantity_in_stock
    add_column :product_details, :quantity_in_stock, :integer
    change_column :products, :product_available, :boolean, default: true
    # Ex:- change_column("admin_users", "email", :string, :limit =>25)
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
