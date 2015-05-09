class AddUsernameRole < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, :default => nil
    add_column :users, :role,     :string, :default => nil

    add_index :users, [:email, :username]
  end
end
