class ChangeHarvestToHarvestInfo < ActiveRecord::Migration
  def change
    create_table :harvest_info do |t|
      t.string :subdomain
      t.string :username
      t.string :password
      t.references :user
    end
  end
end
