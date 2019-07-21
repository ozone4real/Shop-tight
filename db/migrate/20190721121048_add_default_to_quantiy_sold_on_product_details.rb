# frozen_string_literal: true

class AddDefaultToQuantiySoldOnProductDetails < ActiveRecord::Migration[5.2]
  def change
    change_column :product_details, :quantity_sold, :integer, default: 0
    # Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
