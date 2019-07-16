# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :order_number
      t.timestamp :payment_date
      t.references :user, foreign_key: true
      t.references :payment, foreign_key: true

      t.timestamps
    end
  end
end
