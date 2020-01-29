class User < ApplicationRecord
    has_many :reviews
    has_many :saved_resorts
    has_many :review_likes
    has_many :questions
    has_mnay :answers
    has_many :answer_likes

    has_secure_password
end
