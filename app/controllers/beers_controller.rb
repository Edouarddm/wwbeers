class BeersController < ApplicationController
  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
    @brewery = Brewery.where(id: @beer.brewery_id)
    @markers = @brewery.geocoded.map do |brewery|
      {
        lat: brewery.latitude,
        lng: brewery.longitude
      }
    end
  end
end
