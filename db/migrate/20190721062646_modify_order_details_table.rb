# frozen_string_literal: true

class ModifyOrderDetailsTable < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_details, :product_detail, foreign_key: true
  end
end
