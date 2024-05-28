class Product < ApplicationRecord
  belongs_to :user
  belongs_to :supplier
  has_many :purchases, dependent: :destroy
  has_many :purchase_lines, dependent: :destroy
end
