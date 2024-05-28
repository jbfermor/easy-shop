class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :supplier
  has_many :purchase_lines, dependent: :destroy

  enum :status, {
    created: 0,
    pending: 1,
    received: 2, 
    part_received: 3
  }
end
