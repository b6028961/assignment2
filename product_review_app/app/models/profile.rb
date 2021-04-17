class Profile < ApplicationRecord
    has_many :reviews
    #validates :Name, presence: true
    #validates :DoB, presence: true
    #validates :Address, presence: true
    #validates :City, presence: true
    #validates :Country, presence: true
    #validates :Photo, presence: true
end
