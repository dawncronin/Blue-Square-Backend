class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :text, :rating, :user_id, :resort_id
  belongs_to :user
  
end
