class Question < ApplicationRecord
  belongs_to :user
  belongs_to :resort
  has_many :answers
end
