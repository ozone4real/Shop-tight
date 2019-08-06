# frozen_string_literal: true

class AddTimesViewedToProductDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :product_details, :times_viewed, :integer, default: 0
  end
end
