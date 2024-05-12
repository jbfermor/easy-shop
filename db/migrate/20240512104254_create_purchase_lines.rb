class CreatePurchaseLines < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_lines, id: :uuid do |t|
      t.references :purchase, null: false, foreign_key: true, type: :uuid
      t.references :product, null: false, foreign_key: true, type: :uuid
      t.integer :quantity
      t.decimal :total, precision: 8, scale: 2

      t.timestamps
    end
  end
end
