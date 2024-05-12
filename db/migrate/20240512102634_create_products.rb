class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products, id: :uuid do |t|
      t.string :name
      t.decimal :price, precision: 8, scale: 2
      t.integer :stock
      t.boolean :active
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :supplier, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
