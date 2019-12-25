class User < ApplicationRecord
  has_many :carts
  has_many :products, through: :carts
  has_many :whishLists
  has_many :products, through: :whishList
  has_many :orders
  has_many :products, through: :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
