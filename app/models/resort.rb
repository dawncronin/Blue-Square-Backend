class Resort < ApplicationRecord
    has_many :reviews
    has_many :saved_resorts
    has_many :questions
    has_many :answers, through: :questions
    has_many :photos

    
end
