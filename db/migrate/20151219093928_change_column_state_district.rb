class ChangeColumnStateDistrict < ActiveRecord::Migration
  def up
    remove_column :biddings, :state
    remove_column :biddings, :district
    add_column :biddings, :state_id, :integer
    add_column :biddings, :district_id, :integer
  end

  def down
    add_column :biddings, :state
    add_column :biddings, :district
    remove_column :biddings, :state_id, :integer
    remove_column :biddings, :district_id, :integer
  end
end
