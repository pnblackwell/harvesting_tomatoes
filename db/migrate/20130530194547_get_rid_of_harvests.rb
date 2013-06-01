class GetRidOfHarvests < ActiveRecord::Migration
  def change
    drop_table :harvests
  end
end
