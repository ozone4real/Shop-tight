# frozen_string_literal: true

class TransferTimesViewedToProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :product_details, :times_viewed
    add_column :products, :times_viewed, :integer, default: 0
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
