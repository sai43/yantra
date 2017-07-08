class AddColumnCategoryIdToProducts < ActiveRecord::Migration[5.0]
  def up
    add_column :products, :category_id, :string
  end

  def down
    remove_column :products, :category_id, :string
  end

end
