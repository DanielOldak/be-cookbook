class AddPriceToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :price, :integer, null: false
  end
end
