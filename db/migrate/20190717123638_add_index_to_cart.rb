# frozen_string_literal: true

class AddIndexToCart < ActiveRecord::Migration[5.2]
  def change
    add_index :carts, %i[product_detail_id user_id], unique: true
    # Ex:- add_index("admin_users", "username")
  end
end
