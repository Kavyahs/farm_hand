class AddQuantityTypeAndPriceTypeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :quantity_type, :string
    add_column :products, :price_type, :string
    add_column :products, :other_details, :text
  end
end
