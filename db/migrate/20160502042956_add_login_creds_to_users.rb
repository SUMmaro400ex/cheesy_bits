class AddLoginCredsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_column :users, :password_digest, :string
  end
end
