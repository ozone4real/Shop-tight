class ChangeProductDiscountType < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :discount, :float
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
