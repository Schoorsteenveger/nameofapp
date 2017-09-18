class AddColumnsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :category_id, :string
    add_column :products, :—force, :string
  end
end
