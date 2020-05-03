class LocationSerializer
  include FastJsonapi::ObjectSerializer
  # must specify which attribute we want from the Location object
  attributes :latitude, :longitude
end
