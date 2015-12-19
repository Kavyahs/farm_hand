class AddFieldToProducts < ActiveRecord::Migration
  def change
    add_column :products, :seller_name, :string
    add_column :products, :email, :string
  end
end
