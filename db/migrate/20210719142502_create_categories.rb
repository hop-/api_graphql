class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name, limit: 256, null: false
      t.string :description

      t.timestamps
    end
  end
end
