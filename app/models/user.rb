class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :bio
  has_many :suppliers
  has_many :products
  has_many :purchases, through: :suppliers
  has_many :purchase_lines, through: :products

end
