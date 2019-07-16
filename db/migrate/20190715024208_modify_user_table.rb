# frozen_string_literal: true

class ModifyUserTable < ActiveRecord::Migration[5.2]
  def change
    connection.execute('ALTER TABLE USERS ALTER COLUMN phone TYPE INT USING phone::integer,
      ALTER COLUMN postal_code TYPE INT USING phone::integer')
  end
end
