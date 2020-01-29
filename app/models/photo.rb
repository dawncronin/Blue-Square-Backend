class Photo < ApplicationRecord
  belongs_to :resort

  has_one_attached :picture
end
