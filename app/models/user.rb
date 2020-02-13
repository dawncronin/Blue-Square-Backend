class User < ApplicationRecord
    has_many :reviews
    has_many :saved_resorts
    has_many :review_likes
    has_many :questions
    has_many :answers
    has_many :answer_likes

    has_secure_password

    validates :username, presence: true, uniqueness: true, length: {in: 2..30}
    validates :password, presence: true, length: {in: 2..30}
end
