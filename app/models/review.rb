class Review < ApplicationRecord
  belongs_to :user
  belongs_to :resort
  has_many :review_likes

  validates :text, presence: true, length: {in: 2..3000}
  
end
