class ResortSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :link, :short_desc, :long_desc, :lat, :long, :zipcode, :region, :state, :open_date, :close_date, :snowfall, :vertical, :summit, :acres, :runs, :lifts, :green, :blue, :black, :double_black, :terrain_parks, :epic, :ikon, :begineer, :photo
  has_many :saved_resorts
  # has_many :photos
end
