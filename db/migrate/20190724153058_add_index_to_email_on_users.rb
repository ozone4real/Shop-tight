# frozen_string_literal: true

class AddIndexToEmailOnUsers < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :email, unique: true
    add_column :product_details, :url_key, :string
    add_index :products, :url_key, unique: true
    add_index :product_details, :url_key, unique: true
  end
end
