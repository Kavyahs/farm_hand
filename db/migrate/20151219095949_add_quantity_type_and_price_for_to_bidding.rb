class AddQuantityTypeAndPriceForToBidding < ActiveRecord::Migration
  def change
    add_column :biddings, :quantity_type, :string
    add_column :biddings, :price_type, :string
  end
end
