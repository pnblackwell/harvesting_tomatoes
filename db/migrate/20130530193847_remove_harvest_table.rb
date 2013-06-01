class RemoveHarvestTable < ActiveRecord::Migration
  def down
    drop_table :harvests
  end
end
