class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :text, :rating, :user, :resort_id
  belongs_to :user
  
end
