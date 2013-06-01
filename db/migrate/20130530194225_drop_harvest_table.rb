class DropHarvestTable < ActiveRecord::Migration
  def up
  end

  def down
    drop_table :harvests
  end
end
