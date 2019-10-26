# frozen_string_literal: true

class AddUrlKeyToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :url_key, :string
    add_column :sub_categories, :url_key, :string
    add_index :categories, :url_key, unique: true
    add_index :sub_categories, :url_key, unique: true
  end
end
