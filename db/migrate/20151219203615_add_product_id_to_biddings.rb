class AddProductIdToBiddings < ActiveRecord::Migration
  def change
    add_column :biddings, :product_id, :integer
  end
end
