class ChangeColumnInProducts < ActiveRecord::Migration
  def up
    remove_column :products, :state
    remove_column :products, :district
    add_column :products, :state_id, :integer
    add_column :products, :district_id, :integer
  end

  def down
    add_column :products, :state
    add_column :products, :district
    remove_column :products, :state_id, :integer
    remove_column :products, :district_id, :integer
  end
end
