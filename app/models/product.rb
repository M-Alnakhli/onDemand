class Product < ApplicationRecord
  has_many :carts 
  has_many :users , through: :carts
  has_many :wishLists 
  has_many :users , through: :wishLis
  has_many :orders
  has_many :users, through: :orders
  
end
