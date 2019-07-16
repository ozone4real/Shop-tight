# frozen_string_literal: true

class ModifyTables < ActiveRecord::Migration[5.2]
  def change
    change_column :product_details, :size, :string
  end
end
