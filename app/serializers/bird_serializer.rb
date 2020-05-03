class BirdSerializer
  include FastJsonapi::ObjectSerializer
  # must specify which attribute we want from the Bird object
  attributes :name, :species
end
