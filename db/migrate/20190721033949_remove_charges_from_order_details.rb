# frozen_string_literal: true

class RemoveChargesFromOrderDetails < ActiveRecord::Migration[5.2]
  def change
    remove_columns :order_details, :charges, :product_details_id
    add_column :products, :shipping_fee, :integer
  end
end
