class PhotoSerializer
    include FastJsonapi::ObjectSerializer
    attributes :photo_url
  end
  