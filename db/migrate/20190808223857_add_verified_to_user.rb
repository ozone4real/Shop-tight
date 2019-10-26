# frozen_string_literal: true

class AddVerifiedToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :verified, :boolean, default: false
  end
end
