# frozen_string_literal: true

class AddDefaultValueToDiscountOnProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :discount, :float, default: 0
    # Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
