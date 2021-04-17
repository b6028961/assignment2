class Review < ApplicationRecord
    has_one :profile 
    has_one :product
    #validates :Author, presence: true
    #validates :ProductRating, presence: true
    #validates :ReviewText, presence: true
    #validates :DateofReview, presence: true
    end
    