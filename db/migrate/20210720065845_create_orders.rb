class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :item, null: false, foreign_key: { to_table: :items }
      t.timestamp :made_at

      t.timestamps
    end
  end
end
