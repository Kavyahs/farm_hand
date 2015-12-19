class ChangeCategoryToCategoryIdInProducts < ActiveRecord::Migration
  def up
    remove_column :products, :category
    remove_column :products, :sub_category
    add_column :products, :category_id, :integer
    add_column :products, :sub_category_id, :integer
  end

  def down
    add_column :products, :category, :string
    add_column :products, :sub_category, :string
    remove_column :products, :category_id
    remove_column :products, :sub_category_id
  end
end
