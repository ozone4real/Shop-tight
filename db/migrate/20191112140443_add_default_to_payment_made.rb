class AddDefaultToPaymentMade < ActiveRecord::Migration[5.2]
  def change
    change_column_default :orders, :payment_made, from: nil, to: false
  end
end
