class Product < ApplicationRecord
has_many :reviews, foreign_key: :ProductId
validates :pName, presence: true
validates :pBrand, presence: true
validates :pCost, presence: true
validates :pCategory, presence: true
validates :pDate, presence: true
validates :pDescription, presence: true
validates :pPhoto, presence: true
end
