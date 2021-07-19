class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name, limit: 256, null: false
      t.string :description
      t.references :category, null: false, foreign_key: { to_table: :categories }

      t.timestamps
    end
  end
end
