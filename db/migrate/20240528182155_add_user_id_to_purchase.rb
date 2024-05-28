class AddUserIdToPurchase < ActiveRecord::Migration[7.0]
  def change
    add_reference :purchases, :user, null: false, foreign_key: true, type: :uuid
  end
end
