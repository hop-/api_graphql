class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.references :restaurant, null: false, foreign_key: { to_table: :restaurants }
      t.references :item, null: false, foreign_key: { to_table: :items }
      t.integer :price, null: false

      t.timestamps
    end
  end
end
