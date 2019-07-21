# frozen_string_literal: true

class AddDefaultToQuantityOnCarts < ActiveRecord::Migration[5.2]
  def change
    change_column :carts, :quantity, :integer, default: 1
    # Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
