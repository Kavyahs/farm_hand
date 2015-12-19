class CreateBiddings < ActiveRecord::Migration
  def change
    create_table :biddings do |t|
      t.float :quantity
      t.float :price
      t.string :bidder_name
      t.string :phone
      t.string :email
      t.string :address
      t.string :district
      t.string :state

      t.timestamps null: false
    end
  end
end
