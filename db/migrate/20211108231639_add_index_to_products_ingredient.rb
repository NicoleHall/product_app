class AddIndexToProductsIngredient < ActiveRecord::Migration[6.1]
  def change
    add_index :products, :ingredient, unique: true
  end
end
