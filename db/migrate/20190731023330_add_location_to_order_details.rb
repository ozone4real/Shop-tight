# frozen_string_literal: true

class AddLocationToOrderDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :order_details, :location, :string
  end
end
