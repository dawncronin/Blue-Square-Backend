class SavedResort < ApplicationRecord
  belongs_to :user
  belongs_to :resort
end
