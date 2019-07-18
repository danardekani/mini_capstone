class ChangeProductIdToInt < ActiveRecord::Migration[6.0]
  def change
    remove_column :carted_products, :product_id, :string
    add_column :carted_products, :product_id, :integer
  end
end
