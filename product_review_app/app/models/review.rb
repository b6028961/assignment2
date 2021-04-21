class Review < ApplicationRecord
    belongs_to :product, foreign_key: :ProductId
    validates :Author, presence: true
    validates :ProductRating, presence: true
    validates :ReviewText, presence: true
    validates :DateofReview, presence: true
    end
    