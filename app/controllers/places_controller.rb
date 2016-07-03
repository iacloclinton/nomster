class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end
  def create
  	place.create(place_params)
  	redirect_to root_path
  end
  private
  def place_params
  	params.request(:place).permit(:name, :description, :address)
  end

end
