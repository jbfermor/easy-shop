class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases, id: :uuid do |t|
      t.datetime :purchase_date
      t.decimal :total_value, precision: 8, scale: 2
      t.references :supplier, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
