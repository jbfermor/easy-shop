class Product < ApplicationRecord
  belongs_to :user
  belongs_to :supplier
  has_rich_text :description
end
