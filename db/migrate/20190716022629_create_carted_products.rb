class CreateCartedProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :carted_products do |t|
      t.integer :user_id
      t.string :product_id
      t.integer :quantity
      t.string :status

      t.timestamps
    end
  end
end
