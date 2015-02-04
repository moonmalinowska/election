class AuthUser < ActiveRecord::Migration
  def change
    remove_column :users, :encrypted_password, :string
    add_column :users, :crypted_password, :string
    add_column :users, :admin, :boolean
    add_column :users, :persistence_token, :string
    add_column :users, :password_digest, :string
  end
end
