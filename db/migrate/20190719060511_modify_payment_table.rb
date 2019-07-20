class ModifyPaymentTable < ActiveRecord::Migration[5.2]
  def up
    change_column :payments, :payment_type, :string, unique: true
    add_column :payments, :picture, :string
    add_column :payments, :description, :text
  end

  def down
    connection.execute('ALTER TABLE payments ALTER COLUMN payment_type TYPE INTEGER USING payment_type::integer')
    remove_columns :payments, :picture, :description
  end
  
end
