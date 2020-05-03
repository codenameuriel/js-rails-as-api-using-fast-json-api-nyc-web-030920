class SightingSerializer
  # no control over selecting specific attributes from Bird/Location object
  include FastJsonapi::ObjectSerializer
  # must specify which attribute we want from the Sighting object
  # can also access entire objects that Sighting object belongs to
  attributes :created_at#, :bird, :location

  # can also add data in form of relationships
  # will create a relationships key with a hash containing each model as their own k:v pair
  # need to add an options hash at the SightingsController to obtain specific data
  belongs_to :bird
  belongs_to :location
end
