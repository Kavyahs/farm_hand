class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :images
      t.string :category
      t.string :sub_category
      t.string :phone
      t.string :address
      t.float :price
      t.float :quantity
      t.string :state
      t.string :district
      t.string :close_date

      t.timestamps null: false
    end
  end
end
