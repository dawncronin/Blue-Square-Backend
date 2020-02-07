class SavedResortSerializer
  include FastJsonapi::ObjectSerializer
  attributes :save_type
  belongs_to :user
end
