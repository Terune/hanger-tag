class Shop < ActiveRecord::Base
  has_many :stocks

  has_many :products, through: :stocks
end
