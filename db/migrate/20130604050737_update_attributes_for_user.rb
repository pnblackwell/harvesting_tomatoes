class UpdateAttributesForUser < ActiveRecord::Migration
  def up
    add_column :users, :token, :string
    add_column :users, :refresh_token, :string
  end

  def down
    remove_column :users, :provider_id
    remove_column :users, :email
    remove_column :users, :password
  end
end
