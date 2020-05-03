class SightingsController < ApplicationController
  def index
    sightings = Sighting.all 
    # adds the included objects at the end of the JSON object
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sightings, options)
  end

  def show
    sighting = Sighting.find(params[:id])
    # will create an included key with the entire object/all attributes
    # options is made if using relationships in the serializer class
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sighting, options)
  end
end
