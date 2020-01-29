class Review < ApplicationRecord
  belongs_to :user
  belongs_to :resort
  has_many :review_likes
  
end
