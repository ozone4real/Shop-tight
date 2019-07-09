class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :payment_type
      t.boolean :allowed

      t.timestamps
    end
  end
end
