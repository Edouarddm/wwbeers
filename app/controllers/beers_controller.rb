class BeersController < ApplicationController
  def index
    if params[:query].present?
      @beers = Beer.search_by_name_style_and_country(params[:query])
    else
      @beers = Beer.all
    end
  end

  def show
    @bookmark = Bookmark.new
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
