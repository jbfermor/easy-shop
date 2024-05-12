class Product < ApplicationRecord
  belongs_to :user
  belongs_to :supplier
  has_rich_text :description
  has_many :purchases
  has_many :purchase_lines
end
