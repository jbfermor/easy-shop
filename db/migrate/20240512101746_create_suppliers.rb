class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers, id: :uuid do |t|
      t.string :name
      t.string :cif
      t.string :address
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :contact_person
      t.string :phone
      t.string :mail
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
