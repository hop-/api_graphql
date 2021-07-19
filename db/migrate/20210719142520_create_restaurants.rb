class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name, limit: 256, null: false
      t.string :location
      t.string :phone, limit: 20

      t.timestamps
    end
  end
end
