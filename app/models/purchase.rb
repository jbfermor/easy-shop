class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :supplier
  has_many :purchase_lines
end
