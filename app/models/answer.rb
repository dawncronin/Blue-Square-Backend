class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :answer_likes
end
