# frozen_string_literal: true

class AddUserToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :user
  end
end
