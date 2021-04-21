class Profile < ApplicationRecord
    has_many :reviews, foreign_key: :ProfileId
    belongs_to :user
    validates :Name, presence: true
    validates :DoB, presence: true
    validates :Address, presence: true
    validates :City, presence: true
    validates :Country, presence: true
    validates :Photo, presence: true
end
