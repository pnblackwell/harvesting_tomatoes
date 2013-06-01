class AddPropertiesToHarvest < ActiveRecord::Migration
  def change
    create_table :harvests do |t|
      t.string :subdomain
      t.string :username
      t.string :password
      t.references :user
    end
  end
end
